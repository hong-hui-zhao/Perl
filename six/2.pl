#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
print "请输入一个长字符串：";
my $input = <STDIN>;
chomp $input;

my @substrings = split('-', $input);
my $count = scalar @substrings;

print "分割成子串的个数：$count\n";
print "分割的子串：\n";
foreach my $substring (@substrings) {
    print "$substring\n";
}
