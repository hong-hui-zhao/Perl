#!/usr/bin/perl

use strict;
use warnings;
use utf8;
binmode(STDOUT, ":encoding(gbk)");
# 定义函数 Axb，接受两个数组引用作为参数，返回所有元素两两相乘的结果数组的引用
sub Axb {
    my ($array1_ref, $array2_ref) = @_;

    my @result;

    # 逐个元素两两相乘并存储结果
    for my $i (@$array1_ref) {
        for my $j (@$array2_ref) {
            push @result, $i * $j;
        }
    }

    return \@result;
}

# 主程序
print "第一个数组: ";
my $input1 = <STDIN>;
chomp $input1;
my @array1 = split ' ', $input1;

print "第二个数组: ";
my $input2 = <STDIN>;
chomp $input2;
my @array2 = split ' ', $input2;

# 调用 Axb 函数计算两个数组元素的乘积
my $result_ref = Axb(\@array1, \@array2);

# 输出结果
print "结果: ", join(' ', @$result_ref), "\n";
