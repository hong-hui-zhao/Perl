#!/usr/bin/perl

use 5.010;
use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
# 读取输入的单词
my %word_count;
my @words;
print "请输入单词（每行一个单词），输入 Ctrl+Z（Windows）结束输入:\n";

while (my $word = <STDIN>) {
    chomp $word;
    $word_count{$word}++;
    push @words, $word;
}

# 输出每个单词出现的次数
foreach my $word (sort keys %word_count) {
    print "$word\t$word_count{$word}\n";
}

# 按ASCII码顺序排序并输出单词
@words = sort @words;
print join("\n", @words), "\n";
