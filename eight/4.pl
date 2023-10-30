#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");

# 从键盘上读取输入的字符串
print "请输入一个只包含大写字符的字符串：\n";
my $input = <STDIN>;
chomp $input;

# 使用正则表达式匹配每个子串的位置和相关内容
while ($input =~ /(A.*?C)/g) {
    my $match = $1;
    my $pre_string = $`;
    my $post_string = $';

    # 输出匹配字符串前的子串、匹配字符串和匹配字符串后的子串以及位置
    my $start_pos = length($pre_string) + 1;
    my $end_pos = $start_pos + length($match) - 1;
    print "位置：$start_pos - $end_pos\n";
    print "匹配字符串前的子串：$pre_string\n";
    print "匹配字符串：$match\n";
    print "匹配字符串后的子串：$post_string\n";
    print "\n";
}

