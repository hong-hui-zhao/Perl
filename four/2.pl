#!/usr/bin/perl

use utf8;

binmode(STDOUT,":encoding(gbk)");

 %codon_table = (
    'TTT' => 'F', 'TCT' => 'S', 'TAT' => 'Y', 'TGT' => 'C',
    'TTC' => 'F', 'TCC' => 'S', 'TAC' => 'Y', 'TGC' => 'C',
    'TTA' => 'L', 'TCA' => 'S', 'TAA' => '.', 'TGA' => '.',
    'TTG' => 'L', 'TCG' => 'S', 'TAG' => '.', 'TGG' => 'W',
    'CTT' => 'L', 'CCT' => 'P', 'CAT' => 'H', 'CGT' => 'R',
    'CTC' => 'L', 'CCC' => 'P', 'CAC' => 'H', 'CGC' => 'R',
    'CTA' => 'L', 'CCA' => 'P', 'CAA' => 'Q', 'CGA' => 'R',
    'CTG' => 'L', 'CCG' => 'P', 'CAG' => 'Q', 'CGG' => 'R',
    'ATT' => 'I', 'ACT' => 'T', 'AAT' => 'N', 'AGT' => 'S',
    'ATC' => 'I', 'ACC' => 'T', 'AAC' => 'N', 'AGC' => 'S',
    'ATA' => 'I', 'ACA' => 'T', 'AAA' => 'K', 'AGA' => 'R',
    'ATG' => 'M', 'ACG' => 'T', 'AAG' => 'K', 'AGG' => 'R',
    'GTT' => 'V', 'GCT' => 'A', 'GAT' => 'D', 'GGT' => 'G',
    'GTC' => 'V', 'GCC' => 'A', 'GAC' => 'D', 'GGC' => 'G',
    'GTA' => 'V', 'GCA' => 'A', 'GAA' => 'E', 'GGA' => 'G',
    'GTG' => 'V', 'GCG' => 'A', 'GAG' => 'E', 'GGG' => 'G',
);

 $count = 50;

while ($count > 0) {
    print "请输入三个DNA碱基（输入q退出）：";
    $input = <STDIN>;
    chomp $input;

    if ($input eq 'q') {
        last;
    }

    if (length($input) != 3) {
        print "输入的DNA碱基必须为三个字符，请重新输入。\n";
        next;
    }

     $codon = uc($input);
    if (exists $codon_table{$codon}) {
        $amino_acid = $codon_table{$codon};
        print "三联体密码 $codon 对应的氨基酸为 $amino_acid\n";
    } else {
        print "无效的三联体密码，请重新输入。\n";
    }

    $count--;
    print "剩余查询次数：$count\n";
}

print "程序结束。\n";
