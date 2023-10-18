#!/usr/bin/perl

use 5.010;
use strict;
use utf8;
use warnings;


my @a1,my @a2,my @a3;
my $i,my $j;
@a1 = map int(rand 6),1..10;
print "@a1\n";
@a2 = @a1;
foreach $i (@a2) {
	$j=0;
	foreach (0..$#a1) {
		if($a1[$_] == $i) {
			$j+=1;
			if($j>1) {$a2[$_]=9;}
		}
	}
	push @a3,$j;
}
push @a2,@a3;

binmode(STDOUT,":encoding(gbk)");
print "数	出现次数\n";
$j=0;
grep {
	if($a2[$_] != 9) {
		print "$a2[$_]	$a2[$_+10]\n";
	}
	if($j<$a2[$_+10]) {
		$j=$a2[$_+10];
	}
}0..($#a2/2);
print "出现最多的数有：";
map {
	if($a2[$_+10] == $j) {print "$a2[$_] ";}
}0..($#a2/2);
print "\n出现次数为：$j\n";