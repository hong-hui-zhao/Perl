#!/usr/bin/perl

$DNA = "ATCGAAAGCTTTCGGAATTCATCGAAGCTTATCGGGAATTCATCGACTGGACTATTCATCGATAAGCTTCGGGAATTCCA";
$ECORI = "GAATTC";
$HIND3 = "AAGCTT"; 
$C_ECORI = "GmEmAATTC";
$C_HIND3 = "AmHmAGCTT";
$DNA =~s/$ECORI/$C_ECORI/g;
$DNA =~s/$HIND3/$C_HIND3/g;
@dna_cut = split/m/,$DNA;
foreach $i(@dna_cut){
	$num = length($i);
	if($num == 1) {print $i," ";}
	else {print "$num ";}}


