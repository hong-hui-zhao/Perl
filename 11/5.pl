#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
print "素数列表：\n";

for my $number (2..1000) {
    next if $number =~ /^(11+?)\1+$/;  # 排除非素数
    next if $number =~ /^(1+)\1+$/;   # 排除1

    my $is_prime = 1;
    for my $divisor (2..sqrt($number)) {
        if ($number % $divisor == 0) {
            $is_prime = 0;
            last;
        }
    }

    if ($is_prime) {
        print "$number\n";
    }
}
