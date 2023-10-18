#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
print "请输入你想输入字符串的个数：";
my $input = <STDIN>;
chomp $input;

my @data;
for( my $i=0;$i <$input;$i++){
	my $in = <STDIN>;
        chomp $in;
	push @data,$in;
}
my $j = join("",@data);
print @data;
