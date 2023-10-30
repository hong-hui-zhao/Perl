#!/usr/bin/perl

use 5.010;

print "please enter the number.\n";
$n = <STDIN>;
chomp($n);
print "please enter the String.\n";
$s = <STDIN>;
chomp($s);

foreach(1 .. $n){
	print "$s\n";
}


