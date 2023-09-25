#!/usr/bin/perl

my $i=1;
my $j=1;
for($i=1;$i<=5;$i++)
{
    for($j=1;$j<=5-$i;$j++)
    {
        print " ";
    }
    for($j=1;$j<=$i;$j++)
    {
        print "* ";
    }
    print "\n";

}

