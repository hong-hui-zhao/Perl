#!/usr/bin/perl
use strict;
use warnings;

# 定义 DNA 密码子到氨基酸的映射哈希表
my %genetic_code = (
    'TTT' => 'F', 'TTC' => 'F', 'TTA' => 'L', 'TTG' => 'L',
    'TCT' => 'S', 'TCC' => 'S', 'TCA' => 'S', 'TCG' => 'S',
    'TAT' => 'Y', 'TAC' => 'Y', 'TAA' => '*', 'TAG' => '*',
    'TGT' => 'C', 'TGC' => 'C', 'TGA' => '*', 'TGG' => 'W',
    'CTT' => 'L', 'CTC' => 'L', 'CTA' => 'L', 'CTG' => 'L',
    'CCT' => 'P', 'CCC' => 'P', 'CCA' => 'P', 'CCG' => 'P',
    'CAT' => 'H', 'CAC' => 'H', 'CAA' => 'Q', 'CAG' => 'Q',
    'CGT' => 'R', 'CGC' => 'R', 'CGA' => 'R', 'CGG' => 'R',
    'ATT' => 'I', 'ATC' => 'I', 'ATA' => 'I', 'ATG' => 'M',
    'ACT' => 'T', 'ACC' => 'T', 'ACA' => 'T', 'ACG' => 'T',
    'AAT' => 'N', 'AAC' => 'N', 'AAA' => 'K', 'AAG' => 'K',
    'AGT' => 'S', 'AGC' => 'S', 'AGA' => 'R', 'AGG' => 'R',
    'GTT' => 'V', 'GTC' => 'V', 'GTA' => 'V', 'GTG' => 'V',
    'GCT' => 'A', 'GCC' => 'A', 'GCA' => 'A', 'GCG' => 'A',
    'GAT' => 'D', 'GAC' => 'D', 'GAA' => 'E', 'GAG' => 'E',
    'GGT' => 'G', 'GGC' => 'G', 'GGA' => 'G', 'GGG' => 'G',
);

# 获取用户输入
print "请输入DNA序列: ";
my $dna_sequence = <STDIN>;
chomp($dna_sequence);

print "正义链(0)或反义链(1): ";
my $strand = <STDIN>;
chomp($strand);

print "翻译的起始位点(0, 1, 2): ";
my $start_position = <STDIN>;
chomp($start_position);

# 调用翻译函数
my $translated_protein = translate_dna($dna_sequence, $strand, $start_position);

# 输出翻译结果
print "翻译结果: $translated_protein\n";

# 定义翻译函数
sub translate_dna {
    my ($sequence, $is_reverse, $start_position) = @_;

    # 反转 DNA 序列，如果是反义链
    $sequence = reverse_complement($sequence) if $is_reverse;

    # 初始化翻译结果
    my $protein = '';

    # 从起始位置开始，每次跳过3个碱基翻译一个氨基酸
    for (my $i = $start_position; $i < length($sequence) - 2; $i += 3) {
        my $codon = substr($sequence, $i, 3);
        my $amino_acid = $genetic_code{$codon} // '?'; # 如果密码子未知，则用 '?' 代替
        $protein .= $amino_acid;
    }

    return $protein;
}

# 定义反转互补函数
sub reverse_complement {
    my ($sequence) = @_;
    $sequence =~ tr/ACGTacgt/TGCAtgca/;
    return reverse($sequence);
}
