#!/usr/bin/perl

use 5.010;
use utf8;
# 引入utf8模块 脚本内的字符串使用utf8作为编码格式

binmode(STDOUT, ":encoding(gbk)");
# 设置标准输出的编码格式为gbk，以确保能够正确显示中文字符

# 定义一个函数来计算阶乘
sub factorial {
    # 定义一个状态类型的变量来存储阶乘的结果
    state $factorial = 1;

    # 获取函数的参数
    my $n = shift;

    # 计算阶乘
    if ($n == 0) {
        $factorial = 1;
    } else {
        $factorial = $n * factorial($n - 1);
    }

    # 返回阶乘的结果
    return $factorial;
}

# 调用函数并输出 1-10 的阶乘
for ($i = 1; $i <= 10; $i++) {
    print "$i! = ", factorial($i), "\n";
}
