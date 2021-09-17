#!/usr/local/bin/perl
use Tk;
my $mw = new MainWindow; # Main Window
my $frm_name = $mw -> Frame() -> pack();
my $lab1 = $frm_name -> Label(-text=>"Covid Information",-background => "blue", -font=>"courierfont",-relief=>"raised") ->pack();
my $lab = $frm_name -> Label(-text=>"Vaccination status",-background => "pink", -font=>"courierfont",-relief=>"raised") -> pack();
my $but = $mw -> Button(-text=>"Kerala",-activebackground=>"green",-command=>\&clicbut)-> pack(-side=>"left", -anchor=>'nw');
my $but1= $mw -> Button(-text=>"Punjab",-activebackground=>"red",-command=>\&clicbut1)-> pack(-side=>"left", -anchor=>'n');
my $but2 = $mw -> Button(-text=>"TamilNadu" ,-activebackground=>"orange",-command=>\&clicbut2)-> pack(-side=>"left", -anchor=>'ne'); 
my $but3= $mw -> Button(-text=>"West Bengal",-activebackground=>"orange",-command=>\&clicbut3)-> pack(-side=>"left", -anchor=>'ne');
my $but4 = $mw -> Button(-text=>"Gujurat",-activebackground=>"green",-command=>\&clicbut4)-> pack(-side=>"left", -anchor=>'nw');
my $but5= $mw -> Button(-text=>"Delhi",-activebackground=>"red",-command=>\&clicbut5)-> pack(-side=>"left", -anchor=>'ne');

MainLoop;
sub clicbut{ $mw->messageBox(-message=>"Kerala : First dose:15672348 Second dose:6427551",-background=>"green",); }
sub clicbut1{ $mw->messageBox(-message=>" Punjab : First dose:28202118 Second dose:2287403",-background=> "red",);}
sub clicbut2{ $mw->messageBox(-message=>" TamilNadu : First dose:20857302 Second dose:4689811",-background => "orange",); }
sub clicbut3{ $mw->messageBox(-message=>" West Bengal : First dose:23264439 Second dose:9134008",-background => "Orange",);}
sub clicbut4{ $mw->messageBox(-message=>" Gujurat : First dose:28113725 Second dose:9054592",-background=> "green",); }
sub clicbut5{ $mw->messageBox(-message=>" DElhi : First dose:28202118 Second dose:2287403",-background=> "red",);}