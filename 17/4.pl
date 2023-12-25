#!/usr/bin/perl
use strict;
use warnings;
use encoding 'utf8', STDOUT => 'gb2312';
use 5.010;

# 定义一个二维数组
my @original_array = (
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
);

# 将二维数组写入文件
my $file_name = "array_data.txt";
open(my $file, '>', $file_name) or die "无法打开文件：$!";

# 使用 map 和 join 写入文件，每一行是一个匿名数组引用
say $file join(',', @$_) for @original_array;

close $file;

# 从文件中读取数据并存入新的二维数组
my @new_array;
open($file, '<', $file_name) or die "无法打开文件：$!";

# 使用 map 和 split 读取文件数据，每一行都被解析成一个匿名数组引用
push @new_array, [split /,/] while (<$file>);

close $file;

# 输出新的二维数组
say "从文件中读取的数组：";
say join("\t", @$_) for @new_array;
