#!/usr/bin/perl

use 5.010;
use strict;
use utf8;

binmode(STDOUT,":encoding(gbk)");
sub sum {
    my $result = 0;
    foreach my $num (@_) {
        $result += $num;
    }
    return $result;
}

# 在主函数中调用 sum 函数
my $total = sum(1, 2, 3, 4, 5);
print "总和：$total\n";
