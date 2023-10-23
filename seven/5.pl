#!/usr/bin/perl

use 5.010;

my @base = qw(A T C G);
my @seq_20;
for (my $i = 0; $i < 20; $i++) {
    my @base_50;
    for (1..50) {
        push @base_50, $base[rand 4];
    }
    my $seq_50 = join "", @base_50;
    push @seq_20, $seq_50;
}

my @seq5 = grep {
    my @base = split //, $_;
    my $G_count = grep { $_ eq "G" } @base;
    $G_count > 5;
} @seq_20;

my $t = scalar @seq5;
for (my $j = 0; $j < $t; $j++) {
    print $seq5[$j],"\n";
}

