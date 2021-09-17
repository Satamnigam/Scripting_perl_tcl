open (satyam,"<satyam.txt") || die "file name incorrect or file doesnt exist";
while (<satyam>){
print $_;
}
close (satyam);
open (satyam,,">>satyam.txt") or die "No such file";
print "\nenter text to be appended to the file","\n";
$text=<>;
print satyam $text;
print "=====text appended successfully=====\n";
print "File after appending======>\n";
open (satyam,"<satyam.txt") || die "file name incorrect or file doesnt exist";
while (<satyam>){
print $_;
}