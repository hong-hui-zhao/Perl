#!/usr/bin/perl
use encoding 'utf8',STDOUT => 'gb2312';
use 5.010;
#use strict;
#use warnings;
open(DATA, "<chengji.txt") or die "chengji.txt 文件无法打开, $!";
while(my $line=<DATA>){
   chomp $line;
   my$line1=$line;
   my @numbers = split(/\s+/, $line1);
   shift @numbers;
   shift @numbers;
   my $sum=0;
   map {$sum = $_+$sum}@numbers;
   push @result,$line."\t".$sum."\t".$sum/@numbers;
}
close DATA;
open(DATA, ">chengji.txt") or die "chengji.txt 文件无法打开, $!";
map {print DATA $_,"\n"}@result;
close DATA;