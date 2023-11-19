#!/usr/bin/perl


use strict;
use warnings;


binmode(STDOUT,":encoding(gbk)");

my $str = "SHHSHHABCHDGDGABCDATCHDABCHDHDGABCGDH";
my $count = 0;

while ($str =~ /A.C/g) {
    my $site = $-[0];
    $count++;
    print "重复序列：$&, 起始位置：$site\n";
}

print "总重复次数：$count\n";
