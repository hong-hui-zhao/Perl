#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

use utf8;
binmode(STDOUT,":encoding(gbk)");

my $str = "SHHSHHABCHDGDGABCDATCHDABCHDHDGABCGDH";
my $count = 0;

while ($str =~ /A.C/g) {
    my $site = $-[0];
    $count++;
    print "重复序列：$&, 起始位置：$site\n";
}

print "总重复次数：$count\n";

