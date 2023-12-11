#!/usr/bin/perl
use strict;
use warnings;
use utf8;
binmode(STDOUT, ":encoding(gbk)");
# 定义计算阶乘的递归函数
sub factorial {
    my $n = shift; # 从参数中获取整数 $n

    # 递归结束条件：阶乘的基本情况为 0 和 1，它们的阶乘均为 1
    return 1 if $n == 0 || $n == 1;

    # 递归调用，计算阶乘
    return $n * factorial($n - 1);
}

# 输入一个整数，计算其阶乘
print "请输入一个整数: ";
my $input = <STDIN>; # 从用户输入中获取整数
chomp($input);       # 去除输入中的换行符

# 检查输入是否为正整数
if ($input =~ /^[1-9]\d*$/) {
    my $result = factorial($input); # 调用计算阶乘的函数
    print "阶乘结果: $result\n";
} else {
    print "请输入一个正整数。\n";
}
