#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
@base=qw(A T C G);
foreach(1..10){
	@base_50=();
	foreach(1..50){
		push @base_50,$base[rand 4];
	}
	$seq_50 = join ("",@base_50);
	push @seq_10,$seq_50;
}

print "10条DNA链","\n";
foreach $i (@seq_10){
#屏幕输出G数
print $i."\n";
}

foreach $seq(@seq_10){
@sequence = split //,$seq;
$G_number=0;
foreach $base(@sequence){
	$G_number ++ if $base eq "G";
}
push @seq_sel_g10,$seq if $G_number>10;
}

print "G_number > 10 的 DNA 链","\n";
foreach $i(@seq_sel_g10){
print $i."\n";
}
