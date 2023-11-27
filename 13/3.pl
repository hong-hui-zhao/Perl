#!/usr/bin/perl
use 5.010;
use strict;
use warnings;
use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
# 定义汽泡排序函数
sub SORT {
    my @array = @_;        # 接收数组作为输入
    my $length = scalar @array;    # 获取数组的长度

    # 执行汽泡排序
    for my $i (0..$length-2) {    # 从第一个元素到倒数第二个元素
        for my $j (0..$length-$i-2) {    # 从第一个元素到(length - i - 2)元素
            if ($array[$j] > $array[$j+1]) {    # 比较相邻的元素
                # 如果顺序不正确，则交换元素
                ($array[$j], $array[$j+1]) = ($array[$j+1], $array[$j]);
            }
        }
    }

    return @array;    # 返回排序后的数组
}

# 测试SORT函数
my @unsorted = (9, 5, 2, 7, 1);    # 创建一个未排序的数组
my @sorted = SORT(@unsorted);    # 调用SORT函数对数组进行排序

# 打印未排序和排序后的数组
print "未排序的数组: @unsorted\n";
print "排序后的数组: @sorted\n";
