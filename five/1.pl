#!/usr/bin/perl

use 5.010;

for  $i (1..9) {
    for  $j (1..$i) {
        print "$j x $i=",$j * $i," ";
    }
    print "\n";
}
