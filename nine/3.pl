#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");

print "请输入字符串：";
my $dna_sequence = <STDIN>;
chomp($dna_sequence);

# 搜索重复序列
while ($dna_sequence =~ /((\w{2,6})\2+)/g) {
    my $repeat_sequence = $2;
    my $repeat_count = length($1) / length($repeat_sequence);
    my $start_position = pos($dna_sequence) - length($1);

    if ($repeat_count >= 2) {
        print "重复序列：$repeat_sequence，重复次数：$repeat_count，起始位置：$start_position\n";
    }
}