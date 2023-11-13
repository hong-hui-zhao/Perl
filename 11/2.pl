#!/usr/bin/perl

use 5.010;
use utf8;

binmode(STDOUT,":encoding(gbk)");

print "请输入多行数据，以空行结束输入:\n";

my @lines;
while (my $line = <STDIN>) {
    chomp $line;
    last if $line eq '';
    push @lines, $line;
}

print "长度为4的回文字符串:\n";
foreach my $line (@lines) {
    my @words = $line =~ /\b(\w{4})\b/g;
    foreach my $word (@words) {
        if ($word eq reverse $word) {
            print "$word\n";
        }
    }
}