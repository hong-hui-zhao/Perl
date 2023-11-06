#!/usr/bin/perl

use 5.010;

use utf8;
binmode(STDOUT,":encoding(gbk)");

print "请输入字符串：";
my $string = <STDIN>;
chomp($string);

while ($string =~ /([A-Z])\1+/g) {
    my $substring = $&;
    my $position = pos($string) - length($substring) + 1;

    print "子串：$substring，位置：$position\n";
}
