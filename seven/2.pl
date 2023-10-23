#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
my @un_left;
my @un_right;
my @pair;
my $pairs;
my $t;
my $word ='())()))(())rrrrrr)))))))dgdggdg((((((((((()(';
print $word,"\n";

my @word = split //, $word;
foreach my $i (0..@word-1){
        if($word[$i] eq '('){
           push @un_left, $i;
         } elsif ($word[$i] eq ')'){
        if(@un_left){
        push @pair,pop @un_left,$i; 
        } else {
                push  @un_right,$i;
        }
    }
}
print "unpaired:\n";
foreach $t (0..@word-1){
    if(@un_left && $t == $un_left[0]){
        print '(';
        shift @un_left;
    } elsif(@un_right && $t == $un_right[0]){
        print ')';
        shift @un_right;
    } else {
        print " ";
    }
}
print "\npaired:\n";
$pairs = @pair/2;
foreach my $j(1..$pairs){
my $left = shift @pair;
my $right = shift @pair;
my $middle = $right - $left - 1;
print " " x $left,'('," " x $middle,')',"\n";
}
