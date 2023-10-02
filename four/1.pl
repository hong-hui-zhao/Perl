#!/usr/bin/perl


# 生成随机的 DNA 序列
sub generate_dna_sequence {
    $length = shift;
    @bases = ('A', 'C', 'G', 'T');
    $sequence = '';
    for ($i = 0; $i < $length; $i++) {
        $random_base = $bases[rand @bases];
        $sequence .= $random_base;
    }
    return $sequence;
}

# 生成两条长度为50bp的 DNA 序列
$sequence1 = generate_dna_sequence(50);
$sequence2 = generate_dna_sequence(50);

print "Sequence 1: $sequence1\n";
print "Sequence 2: $sequence2\n";

# 计算匹配的碱基总数
$match_count = 0;
for ($i = 0; $i < length($sequence1); $i++) {
    $base1 = substr($sequence1, $i, 1);
    $base2 = substr($sequence2, $i, 1);
    if ($base1 eq $base2) {
        $match_count++;
    }
}

print "Match count : $match_count\n";
