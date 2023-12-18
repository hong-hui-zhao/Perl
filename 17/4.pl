#!/usr/bin/perl
use strict;
use warnings;
use utf8;
binmode(STDOUT, ":encoding(gbk)");
# 定义函数，使用引用传递参数
sub find_max {
    my ($array_ref) = @_;

    # 检查是否传递了有效的数组引用
    unless (ref $array_ref eq 'ARRAY') {
        die "Invalid array reference provided.";
    }

    # 初始化最大值为数组的第一个元素
    my $max_value = $array_ref->[0];

    # 遍历数组，找到最大值
    foreach my $element (@$array_ref) {
        if ($element > $max_value) {
            $max_value = $element;
        }
    }

    return $max_value;
}

# 主程序
my @input_array = (3, 7, 1, 9, 5);

# 调用函数并打印结果
my $result = find_max(\@input_array);
print "最大值是: $result\n";

