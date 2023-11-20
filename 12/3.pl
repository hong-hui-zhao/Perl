#!/usr/bin/perl

use 5.010;
use strict;
use utf8;

binmode(STDOUT,":encoding(gbk)");
print "请输入字符串：";
my $input = <STDIN>;
chomp $input;

$input =~ tr/AB/ab/;

print "替换后的字符串：$input\n";
