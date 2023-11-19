#!/usr/bin/perl

sub translate {
	$protein = "";
	$num = length($_[0])-2;
	for($i = 0;$i < $num;$i+=3){
	$codon = substr($_[0],$i,3);
	if($codon=~/GC./){$protein.='a'}
	elsif($codon=~/TG[TC]/){$protein.='c'}
	elsif($codon=~/GA[TC]/){$protein.='d'}
	elsif($codon=~/GA[AG]/){$protein.='e'}
	elsif($codon=~/TT[TC]/){$protein.='f'}
	elsif($codon=~/GG./){$protein.='g'}
	elsif($codon=~/CA[TC]/){$protein.='h'}
	elsif($codon=~/AT[TCA]/){$protein.='i'} 
	elsif($codon=~/AA[AG]/){$protein.='k'}
	elsif($codon=~/TT[AG]|CT./){$protein.='l'}
	elsif($codon=~/ATG/){$protein.='m'}
	elsif ($codon=~/AA[TC]/){$protein.='n'}
	elsif($codon=~/CC./){$protein.='p'}
	elsif($codon=~/CA[AG]/){$protein.='q'}
	elsif($codon=~/CG.|AG[AG]/){$protein.='r'}
	elsif($codon=~/TC.|AG[TC]/){$protein.='s'}
	elsif($codon=~/AC./){$protein.='t'}
	elsif($codon=~/GT./){$protein.='v'}
	elsif($codon=~/TGG/){$protein.='w'}
        elsif($codon=~/TA[TC]/){$protein.='y'}
	elsif($codon=~/TA[AG]|TGA/){$protein.='*'}
	else{$protein.='#'}}
	print "$protein","\n";}
	
$dna = "ATCGTGAAACCCGGGTTAATGA";
$r_dna = reverse $dna;
$dna1 = "TCGTGAAACCCGGGTTAATGA";
$dna2 = "CGTGAAACCCGGGTTAATGA";
$r_dna1 = reverse "ATCGTGAAACCCGGGTTAATG";
$r_dna2 = reverse "ATCGTGAAACCCGGGTTAAT";
translate($dna);
translate($dna1);
translate($dna2);
translate($r_dna);
translate($r_dna1);
translate($r_dna2);