#!/usr/bin/perl

use 5.010;
use utf8;
binmode(STDOUT,":encoding(gbk)");
 

my @array;
$i=10;
  $d = int(rand(5));
  push @array,$d;
  $i--;
}
 

print "十个数是：";
foreach $array (@array) {
    print "$array"," ";
}


print "\n数","\t","出现次数\n";

foreach my $count (@array){
$hash{$count}++;
}

for  $key (sort keys %hash) {
print "$key","\t", "$hash{$key}\n";
push @dat,$hash{$key};
} 



#高水线法找出出现频率最高的元素
sub max { 
  ($max_so_far) = shift @_; #数组中第一个值，暂时当成最大值。 
  foreach(@_){         #遍历数组@_ 
  if($_>$max_so_far){     #看其它元素是否有比$max_so_far大的值。 
  $max_so_far = $_;}     #如果有话，更新最大值变量 
  } 
  $max_so_far; 
} 
$MAX = max(@dat);
%rev = reverse(%hash);
print "出现频率最多的数是: $rev{$MAX}";
print "出现次数是 ：$MAX";