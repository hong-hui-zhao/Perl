#!/usr/bin/perl


use strict;
use warnings;
use utf8;
binmode(STDOUT, ":encoding(gbk)");

# 定义汉诺塔子程序
#如果盘片数量大于1，就会执行递归操作。递归调用 hanoi 函数三次：

#将前 n-1 个盘片从源柱经过目标柱移到辅助柱。
#将第 n 个盘片从源柱移到目标柱。
#将前 n-1 个盘片从辅助柱经过源柱移到目标柱。
sub hanoi {
    my ($n, $s, $t, $a) = @_;

    # 如果只有一个盘片，直接从源柱移到目标柱
    if ($n == 1) {
        print "$s -> $t\n";
    } else {
        # 递归调用hanoi函数，将n-1个盘片从源柱经过目标柱移到辅助柱
        hanoi($n - 1, $s, $a, $t);

        # 将第n个盘片从源柱移到目标柱
        print "$s -> $t\n";

        # 递归调用hanoi函数，将n-1个盘片从辅助柱经过源柱移到目标柱
        hanoi($n - 1, $a, $t, $s);
    }
}

# 设置盘片数量
my $num_discs = 5;

# 调用hanoi函数解决问题，起始柱为A，目标柱为C，辅助柱为B
hanoi($num_discs, 'A', 'C', 'B');
