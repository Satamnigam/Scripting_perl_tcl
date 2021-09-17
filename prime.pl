# !/usr/bin/perl
# for commenting use ctrl+/

print ("Enter Number===>>  ");
$n = <STDIN>;
chomp $n;
# $n=96;
$s=-1;
$prime=-1;
$count=0;
for($i = $n; $i > 1; $i--){
    for($j = 2; $j < $i; $j++){
        # print("$i","$j","\n");
        if ($i%$j==0){$s=0;
            # print("loop broke"," \n");
            last;}
        else {$s=1;}
        $count=$count+1;
    }
    # print("loop broke","$s"," \n");       
    if ($s==1 || $i==2 ){
        # print($i," \n");
        $s=-1;
        if($n%$i==0 && $n!=$i){$prime=0;last;}
        else {$prime=1;}
    }
}
if($prime==1){print("$n","  ","is a Prime Number"," \n");}
else{print("$n"," ","is NOT a Prime Number"," \n")}



# print("Loop Count===>>",$count," \n");

# use strict;
# use warnings;
# my $n;
# print "Enter a number: ";
# chomp($n=<>);
# my $count=0;
# for( $a=1;$a<$n ; $a++){
# if ($n%$a ==0){
# $count++;
# }}
# if ($count==1){
# print "$n is prime";
# }
# else{
# print "$n is not prime";
# }