#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");

my @array1 = ("a", "b");
my %hash1 = ("c" => "c，", "d" => "d，");

print "更改前：\@array1：@array1\n";
print "更改前：%hash1：" . %hash1 . "\n";
print "-" x 30 . "\n";

sub UPCASE {
    print "更改 \@_ 过程：\n";
    my $count = 0;
    foreach my $i (@_) {
        $count++;
        print "循环 $count：更改前：$i";
        $i = uc $i;
        print " 更改后：$i\n";
    }
}

UPCASE(@array1, values %hash1); # 修正此行，同时将哈希值传递给UPCASE

print "-" x 30 . "\n";
print "更改后：\@array1：@array1\n";
print "更改后：%hash1：" . %hash1 . "\n";
