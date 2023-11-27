#!/usr/bin/perl
use 5.010;
sub SUMALL {
     my $sumall;
     map {$sumall+= $_} @_;
     }
@sumalll_10= SUMALL (1..10);
$sumalll_10 = SUMALL(1..10);
print $sumalll_10,"\n";
print "@sumalll_10";
