#!/usr/bin/perl

use utf8;

binmode(STDOUT,":encoding(gbk)");

$seq1 = <STDIN>;
$seq2 = <STDIN>;
chomp $seq1;
chomp $seq2;
$max = "";
$len_1 = length $seq1;
$len_2 = length $seq2;
for($i=0;$i<$len_1-length($max);$i++)
{
	for($j=0;$j<$len_2-length($max);$j++)
	{
		for($length=$len_1-$i;$length>(length($max)-1);$length--)
		{
			if(substr($seq1,$i,$length) eq substr($seq2,$j,$length))
			{
				$max=substr($seq1,$i,$length);
			}
		}
	}
}
print "最长公共子串:$max\n\n";

