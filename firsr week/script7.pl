#!/usr/bin/perl

use 5.010;
use utf8;

binmode(STDOUT,":encoding(gbk)");
$seq_type = 'D';
print "This sequence is $seq_typeNA.\n";
print "This sequence is ${seq_type}NA.\n";
$seq_type = 'R';
print "This sequence is ${seq_type}NA.\n";
$undef =undef;
print "undef变量:$undef 空\n";