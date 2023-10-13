#!/usr/bin/perl

use 5.010;

my @array;
$array[0] = 1; $array[1] = 1;

my $input = <STDIN>;
chomp($input);
for my $i (2 .. $input){
	my $j = $i-1;
	my $k = $i-2;
	$array[$i] = $array[$j]+$array[$k];
	$i++;}
	for my $i (0 .. $input){
		print $array[$i]."\n";
		$i--;}
	
