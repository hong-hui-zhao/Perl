#!/usr/bin/perl


use utf8;
binmode(STDOUT, ":encoding(gbk)");

@class1 = qw(张三 李四 王五);
@class2 = qw(Tom John Lily);
@class3 = qw(Tom 张 John 王 Lily 李);
@grade1 = qw(class1 class2 class3);

foreach $i (0..2) {
    print "class", $i + 1, ": ";
    foreach $j (0..$#{$grade1[$i]}) {
        print $grade1[$i][$j], "\t";
    }
    print "\n";
}
