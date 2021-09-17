# !/usr/bin/perl
print ("enter the two numbers \n");
chomp($num1=<>);
chomp($num2=<>);
$num1=10;
$num2=4;
print "logirthmic Value is ",log($num1/$num2),"\n";

#by passing arguments
sub sum{
$arg1=$_[0];
$arg2=$_[1];
$z=$arg1+$arg2;
print ("sum is $z\n");
}
#no argument passed
sub subt{
$z=$num1-$num2;
print ("difference is $z \n");
}
#using special array
sub mul{
@a= @_;
$mul=1;
foreach $i (@a){
$mul *= $i;
}
print "multipication is $mul\n"
}
sub div{
$z=int($num1/$num2);
print "division is $z\n";
}
sub mod(){
$z=$num1%$num2;
print ("remainder is $z\n");
}
sum($num1,$num2);
subt();
mul($num1,$num2);
div();
mod();
print ("Square root of num1 is ",sqrt($num1),"\n");
print ("Absolute Value of num1 is ",abs($num1),"\n");
$pi=3.14;
print "sine Value is ",sin(2*$pi),"\n";
print "Cosine Value is ",cos(2*$pi),"\n";

print "Exponential Value is ",exp($num2),"\n";
print "Octal Value is ",oct($num1),"\n";
print "Hexadecimal Value is ",hex($num1),"\n";
print $date=`date`,"\n";
@listing=`ls -l`;
# print @listing;