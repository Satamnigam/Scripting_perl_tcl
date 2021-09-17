#!/usr/bin/perl
print"Enter choice of operation : \n 0: Area and circumference of circle\n 1: Volume and surface area of cube\n 2: Area and perimeter of rectangle\n";
chomp($choice=<STDIN>);
SELECT :
{
 circle(), last SELECT if $choice==0;
 cube(), last SELECT if $choice==1 ;
 rect(), last SELECT if $choice==2 ;
}
sub circle
{
 print"Enter Radius of circle : ";
 chomp($radius=<STDIN>);
 $area= (22/7)*($radius*$radius);
 $cirum= 2*(22/7)*$radius;
 print"\nArea of circle = $area\n";
 print"Circumference of circle = $cirum\n";
} 
sub cube
{
 print"print length of a cube :";
 chomp($l=<STDIN>);
 $vol= $l**3;
 $sa= 6*$l*$l;
 print"\nVloume of cube = $vol\n";
 print"Surface area of cube = $sa\n";
}
sub rect
{
 print"Enter length and breadth of rectangle: ";
 chomp($l=<STDIN>);
 chomp($b=<STDIN>);
 $a=$l*$b;
 $p=2*($l+$b);
 print"\nArea =$a\n";
 print"Perimeter =$p\n";
}
