#!/usr/bin/perl

use 5.010;
$dna = "ATCGAAAGCTTTCGGAATTCATCGAAGCTTATCGGGAATTCATCGACTGGACTATTCATCGATAAGCTTCGGGAATTCCA";
$ECORI = "GAATTC";

while (1) {
    if ($dna =~/$ECORI/) {
        push @dna_cut,$`.'G';
        $dna = 'AATCC'.$';
    } else {
        push @dna_cut,$dna;
        last;
    }
}

$count = @dna_cut - 1;
print "Cut sites: $count\nsegment\tlength\tsequence\n";
map {print ++$segment, "\t", length($_), "\t$_\n";} @dna_cut;


$dna = "ATCGAAAGCTTTCGGAATTCATCGAAGCTTATCGGGAATTCATCGACTGGACTATTCATCGATAAGCTTCGGGAATTCCA";
@dna_cut = $dna =~ /\w*?G(?=AATTC)/g; #将酶切后的所有前片段存入@dna_cut
push @dna_cut, $dna =~ /\w*G\KAATTC\w*/g; #将酶切后的最后的片段存入@dna_cut
$count = @dna_cut - 1;
print "Cut sites: $count\nsegment\tlength\tsequence\n";
map {print ++$segment, "\t", length($_), "\t$_\n";} @dna_cut;
