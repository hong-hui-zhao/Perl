#!/usr/bin/perl

use 5.010;

@base=qw(A T C G);
@sequence20 = map{
    @base_50=map{$base[rand 4]}1..50;
    join"",@base_50;
}1..20;
@seq_sel_g5 = map {
    my $seq = $_;
    my @sequence = split //, $seq;
    my $G_number = 0;
    map { $G_number++ if $_ eq "G" } @sequence;
    $G_number > 10 ? $seq : ();
} @sequence20;

map{print $_."\n"}@seq_sel_g5;
