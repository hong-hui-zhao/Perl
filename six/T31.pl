#!/usr/bin/perl
# 随机产生8个小于100的正整数，存入数组

use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");

my @array;
for (my $i=0; $i<8; $i++) {
    push @array, int(rand(100));
}

print "排序前: @array \n";

# 使用冒泡法对数组进行排序
for (my $i=0; $i<@array; $i++) {
    for (my $j=0; $j<@array-$i-1; $j++) {
        if ($array[$j] > $array[$j+1]) {
            my $temp = $array[$j];
            $array[$j] = $array[$j+1];
            $array[$j+1] = $temp;
        }
    }
}

print "排序后: @array\n";

