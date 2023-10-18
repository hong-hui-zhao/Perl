#!/usr/bin/perl

use 5.010;

for my $num (100..999) {
    my $sum = 0;
    my $temp = $num;

    while ($temp > 0) {
        my $digit = $temp % 10;
        $sum += $digit ** 3;
        $temp = int($temp / 10);
    }

    if ($sum == $num) {
        print "$num\n";
    }
}
