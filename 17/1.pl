#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");
mkdir "test" if!-e "test";
mkdir "test/test1" if!-e "test/test1";
for my $i (1..5) {
    open FH, ">", "./test/st$i.txt" or die;
    open FH, ">", "./test/te$i.fasta" or die;
}
close FH;
@files = glob("./test/*");
print "在当前目录下用 glob 获取 test 目录下全部文件:\n";
print "$_\n" for @files;
chdir "test";
mkdir "test1" or print "test1 已存在。\n";
@files = glob("*txt");
print "在 test 目录下用 glob 获取当前目录下 *txt 文件:\n";
print "$_\n" for @files;
chdir "..";
print "在 test 父目录下用 opendir 和 readdir 取 test 目录下所有文件:\n";
opendir DIR, "test";
@files = readdir DIR;
closedir DIR;
chdir "test";
print "在 test 目录下判断获取的文件名是文件还是目录:\n";
for (@files) {
    if (-d $_) {
        print "文件夹: $_\n";
    }
    else {
        print "文件: $_\n";
    }
}

rmdir "test1" or print "$!";unlink @files;
chdir "..";
rmdir "test" or print "$!";
