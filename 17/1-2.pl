#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT, ":encoding(gbk)");

$name = "张三";
@name = ("张三", "李四");
%name = ("ID1", "张三", "ID2", "李四");

sub name {
    $result = $_[0] * 10;
}

print "*name{SCALAR}=", *name{SCALAR}, "\n";
print "*name{ARRAY}=", *name{ARRAY}, "\n";
print "*name{HASH}=", *name{HASH}, "\n";
print "*name{CODE}=", *name{CODE}, "\n";
print "\${*name{SCALAR}}=", ${*name{SCALAR}}, "\n";
print "@{*name{ARRAY}}=", @{*name{ARRAY}}, "\n";
print "%{*name{HASH}}=", %{*name{HASH}}, "\n";
print "&{*name{CODE}}(10)=", &{*name{CODE}}(10), "\n";
