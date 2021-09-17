#!/usr/bin/perl

print "Enter the shape number 0: circle, 1: Cube ,2: rectangle \n";
$option=<STDIN>;

select: ($option);
{
print ("ENTER RADIUS \n");
$r=<STDIN>;
$AREA_OF_CIRCLE=3.14159*$r*$r;
$PERIMETER=2*3.14159*$r; 
print "AREA OF THE CIRCLE IS ===>> $AREA_OF_CIRCLE\n"; 
print "PERIMETER OF THE CIRCLE IS ===>> $PERIMETER\n";
last select if ($option==0);
last;

print ("ENTER SIDE \n");
$S=<STDIN>;
$VOLUME=$S*$S*$S;
$SURFACE_AREA= 6*$S*$S;
print "VOLUME OF CUBE IS ===>> $VOLUME\n";
print "SURFACE AREA OF CUBE IS ===>> $SURFACE_AREA\n"; 
last select if ($option==1);
last;

print ("ENTER LENGTH & BREATH OF RECTANGLE \n");
$l=<STDIN>;
$b=<STDIN>;
$AREA=$l*$b; 
$PERIMETER=2*($l+$b);
print "AREA OF RECTANGE IS ===>> $AREA\n"; 
print "PERIMETER OF RECTANGLE IS ===>> $PERIMETER\n";
last select if ($option==2);
last;
}