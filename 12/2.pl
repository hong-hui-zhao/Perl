#!/usr/bin/perl
use strict;
use 5.010;
use utf8;

binmode(STDOUT,":encoding(gbk)");
print "请输入字符串：";
my $input = <STDIN>;
chomp $input;

my $count_a = ($input =~ tr/a//);
my $count_b = ($input =~ tr/b//);

print "字母a的个数：$count_a\n";
print "字母b的个数：$count_b\n";

