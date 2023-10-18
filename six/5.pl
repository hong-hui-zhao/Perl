#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");

print "请输入你想输入字符串：";
my $input = <STDIN>;
chomp $input;
print "使用revers function：";
my $in = reverse($input);
print $in,"\n";
print "不使用revers function：";
my @sub = split("", $input);
my $count = scalar @sub;
for (my $i=$count-1;$i>=0;$i--){
	print $sub[$i];
}