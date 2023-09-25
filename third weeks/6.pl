#!/usr/bin/perl

use 5.010;

$i = 1;
$ii = 0;
while($i <101)
{
	$ii = $ii + $i;
	$i++;
}
print $ii."\n"