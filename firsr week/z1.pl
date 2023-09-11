#!/usr/bin/perl

use 5.010;

# 定义变量 
$a = "\''''";
$b = "\\\\\\\\";
$c = '////';
$d = '$DNA';
$e = '@DNA';

# 前四行print $a x 2,$d,$b x 7,$e,$a x 2,"\n";
print $a x 3,$d,$b x 5,$e,$a x 3,"\n";
print $a x 4,$d,$b x 3,$e,$a x 4,"\n";
print $a x 5,$d,$b x 1,$e,$a x 5,"\n";
# 靠前四行
print $a x 5,$e,$c x 1,$d,$a x 5,"\n";
print $a x 4,$e,$c x 3,$d,$a x 4,"\n";
print $a x 3,$e,$c x 5,$d,$a x 3,"\n";print $a x 2,$e,$c x 7,$d,$a x 2,"\n";
#靠后四行
print $a x 2,$e,$c x 7,$d,$a x 2,"\n";
print $a x 3,$e,$c x 5,$d,$a x 3,"\n";
print $a x 4,$e,$c x 3,$d,$a x 4,"\n";
print $a x 5,$e,$c x 1,$d,$a x 5,"\n";
#后四行
print $a x 5,$d,$b x 1,$e,$a x 5,"\n";
print $a x 4,$d,$b x 3,$e,$a x 4,"\n";
print $a x 3,$d,$b x 5,$e,$a x 3,"\n";
print $a x 2,$d,$b x 7,$e,$a x 2,"\n";