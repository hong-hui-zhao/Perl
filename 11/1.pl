#!/usr/bin/perl

use 5.010;

$DNA = "ATCGGTGCCCTGGACTGGTACC";
$AccB11 = "GG[CT][GA]CC";
$found = $DNA =~m/$AccB11/;
print "Basic match results:\n$found\n";
print "Before match(\$`):$`\nMatch(\$&):$&\nAfter match(\$'):$'\n";
print "\nif with \\g result:\n";
if($DNA =~m/$AccB11/g){
	$position = pos($DNA)-length($&);
	print "1:match!$& The position is $positio.\n"
} else {
	print "1:No match!"
}
if($DNA =~m/$AccB11/g){
	$position = pos($DNA)-length($&);
	print "2:match!$& The position is $positio.\n"
} else {
	print "2:No match!"
}
if($DNA =~m/$AccB11/g){
	$position = pos($DNA)-length($&);
	print "3:match!$& The position is $positio.\n"
} else {
	print "3:No match!"
}
print "\nwhile with \\g results:\nsite\tfound\n";
while($DNA =~m/$AccB11/g){
	print pos($DNA)-length($&),"\t$&\n";
}
print "\nforeach results:\n";
foreach $i ($DNA =~m/$AccB11/g){
	print "$i\n";
}