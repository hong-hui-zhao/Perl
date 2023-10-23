#!/usr/bin/perl

use 5.010;

@bases=qw(A T C G);
# $i=0; print ++ Si":$_n"foreach bases;
foreach (1..10){
         $number =int (rand 4);
         $base = $bases[$number];
         $DNA= $base;}
# print ">SDNA<";
@DNA= split "",$DNA;
# $i=0; print ++ $i,";$_\n" foreach @DNA
$G_count=0;
foreach $i(@DNA){
$G_count++ if $i eq "G";
}
print "DNA:$DNA\nG_number:$G_count";
