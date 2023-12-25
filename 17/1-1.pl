#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");
# 示例代码7-9：匿名变量引用的创建和ref函数
@refs = (
    \"张三",
    ["张三", "李四"],
    {"ID1" => "张三", "ID2" => "李四"}
);

# 匿名哈希引用
foreach $i (@refs) {
    $ref = ref($i);
    if ($ref eq "SCALAR") {
        print "标量值: $$i\n";  # 用$解引用
    } elsif ($ref eq "ARRAY") {
        # 数组引用
        print "数组值：@$i\n";
    } elsif ($ref eq "HASH") {
        print "哈希值为：", %$i, "\n";
    }
}
