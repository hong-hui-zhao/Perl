#!/usr/bin/perl

open(DNA, ">", "dna.fasta") or die;
@base = qw(A T C G);
foreach $i (1..3) {
    $DNA = "";
    foreach (1..500) {
        $DNA .= $base[rand @base];
    }
    print DNA ">ID:number $i\n";
    for ($j = 0; $j < 500; $j += 70) {
        print DNA substr($DNA, $j, 70), "\n";
    }
}
close DNA;
open(DNA, "<", "dna.fasta") or die;
while (my $line = <DNA>) {
    chomp $line;
    if ($line =~ /^>/) {
        push @newdna, $line;
        $first = 1;
    } elsif ($first == 1) {
        push @newdna, $line;
        $first = 0;
    } else {
        $newdna[-1] .= $line;
    }
}
map { print $_, "\n" } @newdna;