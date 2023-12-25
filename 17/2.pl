#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");

# 输入矩阵
my @matrix;
print "请输入矩阵，每行元素以空格分隔，行之间用回车分隔。输入完毕后，请在新的一行输入结束标记（例如'end'）:\n";

while (my $line = <STDIN>) {
    chomp($line);
    
    last if $line =~ /^\s*end\s*$/i; # 结束标记，不区分大小写

    my @row = split /\s+/, $line;
    push @matrix, \@row;
}

# 输出转置前的矩阵
print "原始矩阵:\n";
print_matrix(\@matrix);

# 进行矩阵转置
my $transposed_matrix = transpose_matrix(\@matrix);

# 输出转置后的矩阵
print "转置后的矩阵:\n";
print_matrix($transposed_matrix);

# 匿名引用：打印矩阵
my $print_matrix = sub {
    my $matrix_ref = shift;

    for my $row (@$matrix_ref) {
        for my $element (@$row) {
            print "$element\t";
        }
        print "\n";
    }
};

# 匿名引用：矩阵转置
my $transpose_matrix = sub {
    my $matrix_ref = shift;

    my $num_rows = scalar(@$matrix_ref);
    my $num_cols = scalar(@{$matrix_ref->[0]});

    my @transposed_matrix;

    for my $i (0 .. $num_rows - 1) {
        for my $j (0 .. $num_cols - 1) {
            $transposed_matrix[$j][$i] = $matrix_ref->[$i][$j];
        }
    }

    return \@transposed_matrix;
};

# 使用匿名引用打印矩阵
$print_matrix->(\@matrix);

# 使用匿名引用进行矩阵转置
$transposed_matrix = $transpose_matrix->(\@matrix);

# 使用匿名引用打印转置后的矩阵
$print_matrix->($transposed_matrix);
