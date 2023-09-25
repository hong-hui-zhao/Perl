#!/usr/bin/perl

use 5.010;
$ii = 0;
do
{
	$i++;
	$ii = $ii + $i;
}while( $i<100);

print $ii,"\n";
