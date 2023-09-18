#!/usr/bin/perl

use 5.010;

my $i=1;
while($i<=10)
{
        if($i%2==0) 
        {
	$i++;
	exit;
         }
         print $i."\n";
         $i++;
}
print "over\n";

