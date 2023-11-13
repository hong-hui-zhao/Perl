#!/usr/bin/perl

use 5.010;
use utf8;

binmode(STDOUT,":encoding(gbk)");
print "请输入一串字符：\n";
my $input = <STDIN>;
chomp $input;

my $what = 'fred|barney';
my @matches = $input =~ /(?:$what){3}/g;

if (@matches) {
    print "匹配到的字符串：\n";
    print "$_\n" foreach @matches;
} else {
    print "未找到匹配的字符串。\n";
}