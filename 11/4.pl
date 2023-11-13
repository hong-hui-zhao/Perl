#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
# 从键盘输入字符串
print "请输入一个字符串：\n";
my $input = <STDIN>;
chomp $input;

# 判断字符串长度是否超过200，如果是，则截取前200个字符
$input = substr($input, 0, 200);

# 将字符串按照每行60个字符进行分割
my @lines = unpack("(A60)*", $input);

# 输出分行后的字符串
print "分行输出结果：\n";
print "$_\n" foreach @lines;
