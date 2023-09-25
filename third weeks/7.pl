#!/usr/bin/perl

use 5.010;

$input = <STDIN>;
chomp $input;

$a = $input%10;
$b = int($input/10)%10;
$c = int($input/100)%10;
$d = int($input/1000);

print $a,"\n";
print $b,"\n";
print $c,"\n";
print $d,"\n";