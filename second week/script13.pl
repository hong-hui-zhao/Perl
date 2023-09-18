#!/usr/bin/perl

use 5.010;

do
{
	$i++;
	$ii = $ii + $i;
}while( $i<100);

print $ii;
