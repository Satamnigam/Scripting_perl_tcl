  # rotate text and graphics on a canvas
  # Steve Redler IV, 6-10-2003
  package require Tk
  
  proc drawInfo { x y color } {
      set size 10
      set tx [expr {$x + $size * 2}]
      .to.c create rectangle $x $y [expr {$x + $size}] [expr {$y + $size}] -fill $color
      .to.c create text $tx $y -anchor nw -fill $color -text "$color box"
  }
  
  proc drawTestCanvasorig { imgVersion} {
      # Draw filled rectangle and some text into canvas at position (x,y).
      if { [catch {toplevel .to -visual truecolor}] } {
          toplevel .to
      }
      wm title .to "Canvas window"
      wm geometry .to "+100+100"
  
      canvas .to.c -bg gray -width 300 -height 220
      pack .to.c
  
      #puts "Drawing text and rectangles into canvas .."
      .to.c create rectangle 1 1 299 219 -outline black
      .to.c create rectangle 3 3 297 217 -outline green -width 2
  
      drawInfo 140  10 black
      drawInfo 140  30 white
      drawInfo 140  50 red
      drawInfo 140  70 green
      drawInfo 140  90 blue
      drawInfo 140 110 cyan
      drawInfo 140 130 magenta
      drawInfo 140 150 yellow
  
      .to.c create text 160 170 -anchor nw -fill black \
        -text "Created with:"
      .to.c create text 160 190 -anchor nw -fill black \
        -text        "Tcl [info patchlevel] and Img $imgVersion"
      update
  }
  
  proc drawTestCanvas { imgVersion} {
      if { [catch {toplevel .t -visual truecolor}] } {
          toplevel .t
      }
      wm title .t "Canvas window"
      wm geometry .t "+0+0"
  
      canvas .t.c -bg gray -width 124 -height 18
      pack .t.c
  
      #puts "Drawing text and rectangles into canvas .."
      .t.c create rectangle 1 1 120 15 -outline black
  
      .t.c create text 2 2 -anchor nw -fill black  -text "Rotated by TCL"
      
      update
  }
  
  
  
  proc canvas2Photo { canvId } {
      # The following line grabs the contents of the canvas canvId into photo image ph.
      set retVal [catch {image create photo -format window -data $canvId} ph]
      if { $retVal != 0 } {
         puts "\n\tFATAL ERROR: Cannot create photo from canvas window"
         exit 1
      }
      return $ph
  }
  
  proc rotateimg {ph angle} {
    #start of rotate code, ph is a handle to text/image written to a canvas
    #use canvas2Photo to get this handle
    set normdata [split [string map {, "" \} "" \" "" ; ""} [$ph data  -format XPM]] "\n"] 
    proc lreverse {list} {
      set res {}
      foreach i $list {set res [concat [list $i] $res]}
      set res
    }
    #puts $normdata
    set rotdata "[string map {\{ "" \} "" \\ ""} [lindex $normdata 0]]\n"
    append rotdata "[string map {\{ "" \} "" \\ ""} [lindex $normdata 1]]\{\n"
    set dims [lindex $normdata 2]
    set width [lindex $dims 0]
    set height [lindex $dims 1]
    set colors [lindex $dims 2]
    set misc [lindex $dims 3]
    
    set bitimage [lrange $normdata [expr 3 + {$colors}] end]
    set currow 0
    array set rotrow {0 ""}
    array set bitarray {0 ""}
    switch $angle {
    270 {
        set colstart [expr {$width} - 1]
        set coltest -1
        set colincr -1 
        append rotdata "\"$height $width $colors $misc\"" 
        }
        
    90 {
        set colstart 0
        set coltest $width
        set colincr 1     
        set bitimage [lreverse $bitimage]
        append rotdata "\"$height $width $colors $misc\""      
         }
         
     45 {
        set angsize [expr {$width  + $height - 1} ]  
        append rotdata "\"$angsize $angsize $colors $misc\""
        set colstart 0
        set coltest $width
        set colincr 1         
        }
        
    225 {
        set angsize [expr {$width  + $height - 1} ]  
        append rotdata "\"$angsize $angsize $colors $misc\""
        set colstart 0
        set coltest $width
        set colincr 1         
        }
                 
    }  
    
    
    for {set row 3} {$row < [expr {$colors} + 3]} {incr row} {
      append rotdata ",\n\"[lindex $normdata $row]\""
    }  
    
    switch $angle {
    90  -  
      
    270 { for {set col $colstart} {$col != $coltest} {incr col $colincr} {
            foreach rowdata $bitimage {
             append rotrow($currow) [string index $rowdata $col]
            }
          append rotdata ",\n\"$rotrow($currow)\""
          incr currow
          }
        }
     45 { foreach rowdata $bitimage {
            for {set col 0} {$col < $width} {incr col 1} { 
              set x2col [expr {$col} + ({$height}  - {$currow} - 1 )] 
              set row [expr {$col + $currow} ]
              set bitarray($row,$x2col) [string index $rowdata  $col]
            }
            incr currow +1
          }
         
          set last "a"
          for {set row 0} {$row < $angsize } {incr row +1} {
          append rotdata ",\n\""    
            for {set col 0} {$col < $angsize} {incr col +1} {  
              if {! [info exists bitarray($row,$col)]} {
                append rotdata $last
              } else {
                set last $bitarray($row,$col)
                append rotdata $bitarray($row,$col)
              }
            }
          append rotdata "\""  
          }
        }  
        
     225 { foreach rowdata $bitimage {
            for {set col 0} {$col < $width} {incr col 1} { 
              set row [expr {$col} + ({$height}  - {$currow} - 1 )] 
              set x2col [expr {$col + $currow} ]
              set bitarray($row,$x2col) [string index $rowdata  $col]
            }
            incr currow +1
          }
         
          set last "a"
          for {set row $angsize} {$row > 0 } {incr row -1} {
          append rotdata ",\n\""    
            for {set col 0} {$col < $angsize} {incr col +1} {  
              if {! [info exists bitarray($row,$col)]} {
                append rotdata $last
              } else {
                set last $bitarray($row,$col)
                append rotdata $bitarray($row,$col)
              }
            }
          append rotdata "\""  
          }
        }          
       
    }
    append rotdata "\};"
    set rh [image create photo -data $rotdata]
    return $rh
    #end of rotate code, rh is a handle to the rotated version of the image
  }
  
  
  #start of rotate text demo code
  package require Img
  
  set version 1.3
  wm geometry . "+320+0"
  drawTestCanvas $version
  drawTestCanvasorig $version
  set ph [canvas2Photo .t.c]
  set ph2 [canvas2Photo .to.c]
  update
  
  #hide the original canvas sources, comment these 2 lines out to see them.
  wm withdraw .t
  wm withdraw .to
  
  button .b -text "Quit" -command exit
  grid .b -row 1 -column 1 
  button .rotbutton0 -image  $ph 
  grid .rotbutton0  -row 1 -column 2 
  button .rotbutton1 -image [rotateimg $ph 45]
  grid .rotbutton1  -row 2 -column 1 
  button .rotbutton2 -image [rotateimg $ph 90]
  grid .rotbutton2   -row 2 -column 2
  
  button .rotbutton5 -image [rotateimg $ph 225] 
  grid .rotbutton5  -row 3 -column 1 -columnspan 2
  button .rotbutton3 -image [rotateimg $ph 270]
  grid .rotbutton3  -row 4 -column 1 
  update
  button .rotbutton4 -image [rotateimg $ph2 45]
  grid .rotbutton4  -row 1 -column 3 -rowspan 4
  
  update