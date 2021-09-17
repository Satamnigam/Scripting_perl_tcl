#!/usr/local/bin/perl
use Tk;
my $mw = new MainWindow; # Main Window
my $frm_name = $mw -> Frame() -> pack();

my $lab1 = $frm_name -> Label(-text=>"Covid Information",-background => "blue", -font=>"courierfont",-relief=>"raised") ->pack();
my $lab  = $frm_name -> Label(-text=>"Number of hotspots in different states",-background => "pink", -font=>"courierfont",-relief=>"raised") -> pack();

my $but  = $mw -> Button(-text=>"Kerala",-activebackground=>"green",-command =>\&clicbut)-> pack(-side=>"top",-anchor=>'w');
my $but1 = $mw -> Button(-text=>"Punjab",-activebackground=>"red",-command =>\&clicbut1)-> pack(-side=>"top",-anchor=>'w');
my $but2 = $mw -> Button(-text=>"TamilNadu" ,-activebackground=>"orange",-command =>\&clicbut2)-> pack(-side=>"top",-anchor=>'w');
my $but3 = $mw -> Button(-text=>"West Bengal",-activebackground=>"orange",-command =>\&clicbut3)-> pack(-side=>"top",-anchor=>'w');
my $but4 = $mw -> Button(-text=>"Gujurat",-activebackground=>"green",-command =>\&clicbut4)-> pack(-side=>"top",-anchor=>'w');
my $but5 = $mw -> Button(-text=>"Delhi",-activebackground=>"red",-command =>\&clicbut5)-> pack(-side=>"top",-anchor=>'w');
my $but6 = $mw -> Button(-text=>"Chhattisgarh",-activebackground=>"green",-command=>\&clicbut6)-> pack(-side=>"top",-anchor=>'w');
my $but7 = $mw -> Button(-text=>"Haryana",-activebackground=>"orange",-command=>\&clicbut7)->pack(-side=>"top",-anchor=>'w');
my $but8 = $mw -> Button(-text=>"Uttarakhand",-activebackground=>"green",-command =>\&clicbut8)-> pack(-side=>"top",-anchor=>'w');
my $but9 = $mw -> Button(-text=>"J&K",-activebackground=>"red",-command =>\&clicbut9)-> pack(-side=>"top",-anchor=>'w');
my $but10 = $mw -> Button(-text=>"UP" ,-activebackground=>"orange",-command =>\&clicbut10)-> pack(-side=>"top",-anchor=>'w');
my $but11 = $mw -> Button(-text=>"Jharkhand",-activebackground=>"orange",-command =>\&clicbut11)-> pack(-side=>"top",-anchor=>'w');
my $but12 = $mw -> Button(-text=>"Assam",-activebackground=>"green",-command =>\&clicbut12)-> pack(-side=>"top",-anchor=>'w');
my $but13 = $mw -> Button(-text=>"Meghalaya",-activebackground=>"red",-command =>\&clicbut13)-> pack(-side=>"top",-anchor=>'w');
my $but14 = $mw -> Button(-text=>"Manipur",-activebackground=>"green",-command=>\&clicbut14)-> pack(-side=>"top",-anchor=>'w');
my $but15 = $mw -> Button(-text=>"Mizoram",-activebackground=>"orange",-command=>\&clicbut15)->pack(-side=>"top",-anchor=>'w');
my $but16 = $mw -> Button(-text=>"Arunachal Pradesh",-activebackground=>"orange",-command=>\&clicbut16)->pack(-side=>"top",-anchor=>'w');
my $but17 = $mw -> Button(-text=>"Sikkim",-activebackground=>"orange",-command=>\&clicbut17)->pack(-side=>"top",-anchor=>'w');
my $but18 = $mw -> Button(-text=>"Nagaland",-activebackground=>"orange",-command=>\&clicbut18)->pack(-side=>"top",-anchor=>'w');
my $but19 = $mw -> Button(-text=>"Tripura",-activebackground=>"orange",-command=>\&clicbut19)->pack(-side=>"top",-anchor=>'w');
my $but20 = $mw -> Button(-text=>"Odisha",-activebackground=>"orange",-command=>\&clicbut20)->pack(-side=>"top",-anchor=>'w');
my $but21 = $mw -> Button(-text=>"Himachal Pradesh",-activebackground=>"orange",-command=>\&clicbut21)->pack(-side=>"top",-anchor=>'w');
my $but22 = $mw -> Button(-text=>"Rajasthan",-activebackground=>"orange",-command=>\&clicbut22)->pack(-side=>"top",-anchor=>'w');
my $but23 = $mw -> Button(-text=>"Madhya Pradesh",-activebackground=>"orange",-command=>\&clicbut23)->pack(-side=>"top",-anchor=>'w');

MainLoop;
sub clicbut{$mw->messageBox(-message=>"Kerala : Number of COVID-19 Hotspots: 100 ",-background=>"red",); }
sub clicbut1{$mw->messageBox(-message=>" Punjab : Number of COVID-19 Hotspots:150",-background => "red",);}
sub clicbut2{$mw->messageBox(-message=>" TamilNadu : Number of COVID-19 Hotspots:84",-background => "red",);}
sub clicbut3{$mw->messageBox(-message=>" West Bengal : Number of COVID-19 Hotspots:65",-background => "orange",); }
sub clicbut4{$mw->messageBox(-message=>" Gujurat : Number of COVID-19 Hotspots:85",-background => "red",);}
sub clicbut5{$mw->messageBox(-message=>" Delhi : Number of COVID-19 Hotspots :45",-background => "orange",); }
sub clicbut6{$mw->messageBox(-message=>"Chhattisgarh : Number of COVID-19 Hotspots :100",-background => "red",);}
sub clicbut7{$mw->messageBox(-message=>"Haryana : Number of COVID-19 Hotspots :79",-background=>"red",);}
sub clicbut8{$mw->messageBox(-message=>"Uttarakhand : Number of COVID-19 Hotspots :46",-background=>"orange",);}
sub clicbut9{$mw->messageBox(-message=>"J&K : Number of COVID-19 Hotspots :87",-background=>"red",);}
sub clicbut10{$mw->messageBox(-message=>"UP : Number of COVID-19 Hotspots :96",-background=>"red",);}
sub clicbut11{$mw->messageBox(-message=>"Jharkhand : Number of COVID-19 Hotspots :48",-background=>"orange",);}
sub clicbut12{$mw->messageBox(-message=>"Assam : Number of COVID-19 Hotspots :32",-background=>"orange",);}
sub clicbut13{$mw->messageBox(-message=>"Meghalaya : Number of COVID-19 Hotspots :96",-background=>"red",);}
sub clicbut14{$mw->messageBox(-message=>"Manipur : Number of COVID-19 Hotspots :45",-background=>"orange",);}
sub clicbut15{$mw->messageBox(-message=>"Mizoram : Number of COVID-19 Hotspots :98",-background=>"red",);}
sub clicbut16{$mw->messageBox(-message=>"Arunachal Pradesh : Number of COVID-19 Hotspots :65",-background=>"red",);}
sub clicbut17{$mw->messageBox(-message=>"Sikkim : Number of COVID-19 Hotspots :23",-background=>"green",);}
sub clicbut18{$mw->messageBox(-message=>"Nagaland : Number of COVID-19 Hotspots :9",-background=>"green",);}
sub clicbut19{$mw->messageBox(-message=>"Tripura : Number of COVID-19 Hotspots :25",-background=>"orange",);}
sub clicbut20{$mw->messageBox(-message=>"Odisha: Number of COVID-19 Hotspots :20",-background=>"green",);}
sub clicbut21{$mw->messageBox(-message=>"Himachal Pradesh: Number of COVID-19 Hotspots :36",-background=>"orange",);}
sub clicbut22{$mw->messageBox(-message=>"Rajasthan: Number of COVID-19 Hotspots :63",-background=>"red",);}
sub clicbut23{$mw->messageBox(-message=>"Madhya Pradesh: Number of COVID-19 Hotspots :22",-background=>"orange",);}