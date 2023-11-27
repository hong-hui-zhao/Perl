#!/usr/bin/perl

use 5.010;
use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
# 定义判断闰年的函数
sub is_leap_year {
    my $year = shift;    # 从函数参数中获取年份

    if ($year % 4 == 0) {
        if ($year % 100 == 0) {
            if ($year % 400 == 0) {
                return 1;    # 能被400整除的年份是闰年
            } else {
                return 0;    # 能被100整除但不能被400整除的年份不是闰年
            }
        } else {
            return 1;    # 能被4整除但不能被100整除的年份是闰年
        }
    } else {
        return 0;    # 不能被4整除的年份不是闰年
    }
}

print "请输入一个年份：";
my $input = <STDIN>;    # 从键盘输入一个年份
chomp $input;    # 去除输入中的换行符

my $year = int($input);    # 将输入的字符串转换为整数

if (is_leap_year($year)) {
    print "$year 是闰年\n";
} else {
    print "$year 不是闰年\n";
}

