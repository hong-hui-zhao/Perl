#!/usr/bin/perl
use strict;
use warnings;
use utf8;
binmode(STDOUT, ":encoding(gbk)");

my @A = (3, 6, 8, 9, 10);
my @B = (1, 2, 3, 4, 5);
# 用于存储结果的数组
my @result;

# 遍历数组 A 的每个元素
foreach my $element_A (@A) {
    foreach my $element_B1 (@B) {
        foreach my $element_B2 (@B) {
            # 如果 B 数组中两个元素不相等且它们的和等于数组 A 的元素
            if ($element_B1 != $element_B2 && $element_A == $element_B1 + $element_B2) {
                # 如果结果数组中已经包含该元素，则跳过
                if ( grep { $_ == $element_A } @result) {next;} 
                # 将该元素添加到结果数组中
                push @result, $element_A;
            }
        }
    }
}

# 打印结果数组
print "方法一的结果：@result\n";

# 用于存储 B 数组中所有两数之和的哈希表
my %sums;

# 遍历数组 B 的每一对元素，并将其和存储到哈希表中
foreach my $num_B1 (@B) {
    foreach my $num_B2 (@B) {
        # 跳过相同的元素
        next if $num_B1 == $num_B2;
        $sums{$num_B1 + $num_B2} = 1;
    }
}

# 用于存储结果的数组
my @results;

# 遍历数组 A 的每个元素，如果在哈希表中找到相应的元素，则添加到结果数组中
foreach my $num_A (@A) {
    push @results, $num_A if exists $sums{$num_A};
}

# 打印结果数组
print "方法二的结果：@results\n";
