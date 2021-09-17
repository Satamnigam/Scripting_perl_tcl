#!/usr/bin/perl
 print "Enter First Number===>>  ";
$a = <STDIN>;
 print "Enter Second Number===>>  ";
$b = <STDIN>;
chomp $a;
chomp $b;
print "Value of  a= $a\n";

print "value of  b= $b\n";

$c = $a + $b;
print "Sum of $a and $b ===>",$c,".\n";

$c = $a - $b;
print "Diffrence of $a and $b ===>",$c,".\n";

$c = $a * $b;
print "Product of $a and $b ===>",$c,".\n";

$c = $a / $b;
print "Division of $a and $b ===>",$c,".\n";

