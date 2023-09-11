#!/usr/bin/perl

use 5.010;

$a = "CTAG";
$b = "CTAGGAC";
$c = "CTAGGACAA";
$d = "CTAGCTAGGACCTAGGACAA";

$a1 = $a . " " x 19 . length($a) . "\n";
$b1 = $b . " " x 16 . length($b) . "\n";
$c1 = $c . " " x 14 . length($c) . "\n";
$d1 = $d . " " x 2 . length($d) . "\n";
print $a1,$b1,$c1,$d1;