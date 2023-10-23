#!/usr/bin/perl

use 5.010;

$word = '())()))(()))(';
print $word,"\n";
@word = split //, $word;
foreach $i (0..@word-1){
        if($word[$i] eq '('){
           push @un_left, $i;
         } elsif ($word[$i] eq ')'){
        if(@un_left){
        push @pair,pop @un_left,$i; #将
        } else {
                push @un_right,$i;
        }
    }
}
print "unpaired:\n";
foreach $i (0..@word-1){
        if($i eq $un_left[0]){
        print '(';
        shift @un_left;
}
elsif($i eq $un_right[0]){
print ')';
shift @un_right; 
}else {
print " ";
}
}
print "\npaired:\n";
$pairs = @pair/2;
foreach $i(1 .. $pairs){
$left = shift @pair;
$right = shift @pair;
$middle = $right - $left - 1;
print " " x $left,'('," " x $middle,')',"\n";
}