#!/usr/bin/perl

my @list = "";
$i = 0;
print "Site\tUnit\tRepeat\n";
$dna = "GATCCGCGCGCGATCATCATCGGGGGGGGA";
while($dna =~ /((.){2,6})\1{2,}/g){
	$site = pos($dna)-length($&)+1;
	if(substr($&,0,1) eq substr($&,1,1)) {next;}
	else {print "$site\t$1\t$&\n";
	$i++;}}
