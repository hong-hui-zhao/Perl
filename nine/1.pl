#!/usr/bin/perl

use 5.010;

use utf8;
binmode(STDOUT,":encoding(gbk)");

print "请输入序列：";
my $sequence = <STDIN>;
chomp($sequence);

my @substrings = split(/(?<=G)(?=[^G])/,$sequence);

foreach my $substring (@substrings) {
    next if $substring eq '';

    my $length = length($substring);
    my $last_char = substr($substring, -1);
    my $first_five_chars = substr($substring, 0, 5);

    print "子串：$substring，长度：$length\n";
    print "最后一个字符：$last_char，前五个字符：$first_five_chars\n";
}