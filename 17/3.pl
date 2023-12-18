#!/usr/bin/perl
use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");@array =(
    [1,2,3],
    [4,5,6],
    [7,8,9]
);

print "-" x 18,"\n";
print "原始矩阵：\n";
# 使用map和join将原始矩阵的每一行转换为字符串并打印出来，元素之间用制表符分隔
print map {join("\t",@$_)."\n"} @array;
print "-" x 18,"\n";
print "转置后的矩阵：\n";

for $i(0..$#array){
    for $j(0..$#{$array[$i]}){
        $r_array[$j][$i] = $array[$i][$j];
        # 计算原始矩阵的转置，将结果保存在$r_array数组中
    }
}
# 使用map和join将转置后的矩阵的每一行转换为字符串并打印出来，元素之间用制表符分隔
print map {join ("\t", @$_)."\n"} @r_array;
print "-" x 18,"\n";

