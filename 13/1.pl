#!/usr/bin/perl

my $dna ="ATCGTGAAACCCGGGTTAATGA";
for my $i(0..2){
my $subdna = substr($dna,$i,);
print "frame",$i+1,":",&translation($subdna),"\n";
}
(my $rc_dna = reverse($dna)) =~ tr/ATCG/TAGC/;
for my $i (0..2){#调用translation，反义链的三框翻译
$subdna = substr($rc_dna,$i,);
print "frame",$i+4,":",&translation($subdna),"\n";
}
sub translation{
my $dna = shift;
#单框翻译自定义函数，输入 DNA 序列标量，输出为翻译后氨基酸序列
my $protein ="";
for($i=0; $i<(length($dna)-2); $i+=3){
my $codon = substr($dna,$i,3);
if($codon =~/GC./){$protein .='a'}
elsif($codon =~/TG[TC]/){$protein .='c'}
elsif($codon =~/GA[TC]/){$protein .='d'}
elsif($codon =~/GA[AG]/){$protein .='e'}
elsif($codon =~/TT[TC]/){$protein .='f'}
elsif($codon =~/GG./){$protein .= 'g'}
elsif($codon =~/CA[TC]/){$protein .= 'h'}
elsif($codon =~/AT[TCA]/){$protein .= 'i'}
elsif($codon =~/AA[AG]/){$protein .= 'k'}
elsif($codon =~/TT[AG]CT./){$protein .= 'l'}
elsif ($codon =~/ATG/){$protein .='m'}
elsif($codon =~/AA[TC]/){$protein .='n'}
elsif(Scodon =~/CC./){$protein .= 'p'}
elsif($codon =~/CA[AG]/){$protein .='q'}
elsif($codon =~/CG.|AG[AG]/){$protein .='r'}
elsif($codon =~/TC.|AG[TC]/){$protein .='s'}
elsif ($codon =~/AC./){$protein .= 't'}
elsif ($codon =~/GT./){$protein .= 'v'}
elsif($codon =~/TGG/){$protein .='w'}
elsif($codon =~/TA[TC]/){$protein .= 'y'}
elsif (Scodon =~/TA[AG]TGA/){$protein .='*'}
else{
$protein .='#';
}
}
$protein;}
