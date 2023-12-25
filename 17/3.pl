#!/usr/bin/perl
use strict;
use warnings;

my @A = (
    [1, 2, 3],
    [4, 5, 6]
);

my @B = (
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
);

if (@{$A[0]} != @{$B[0]}) {
    # 如果两数组行列不等，报告
    print "Can not multiply!\n";
} else {
    my @C;

    for my $i (0..$#A) {
        for my $j (0..$#{$B[0]}) {
            # 次循环，$j，遍历第2个数组
            for my $q (0..$#B) {
                # 内循环，$q，为第 1 个数组的
                $C[$i][$j] += $A[$i][$q] * $B[$q][$j];
            }
        }
    }

    print map { join("\t", @$_) . "\n" } @C; # map 遍历 @C，其内
}
