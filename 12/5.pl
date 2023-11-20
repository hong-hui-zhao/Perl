#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode(STDOUT,":encoding(gbk)");
print "请输入密码：";
my $password = <STDIN>;
chomp $password;

my $valid = 0;

if ($password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[_-])[a-zA-Z0-9_-]{6,16}$/) {
    $valid = 1;
}

if ($valid) {
    print "true\n";
} else {
    print "false\n";
}

