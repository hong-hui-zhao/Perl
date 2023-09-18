#!/usr/bin/perl

use 5.010;
my $i=0;
while($i<=10)
{
      $i++;
      if ($i == 5)
      {
           redo;
      }
      else
      {
          print "I can count to $i!\n";
      }
}

