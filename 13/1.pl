#!/usr/bin/perl

use 5.010;
use strict "vars";
&sub0;
&sub3;
sub sub0{
	my $my="sub0-my1";
	{$my = "sub0-my2";print $my."\n";}
	print $my."\n";
	{my $my="sub0-my3";
	print $my."\n";}
	print $my."\n";
	our $our = "sub0-our1";
	{print $our."\n";}
	{my $our="sub0-our2";
	print $our."\n";}
	print $our."\n";
	&sub1;
	print $my."\n";
	print $my."\n";
print $my."\n";
print $our."\n";
}
sub sub1{
	our $my = "sub1-my";
	print $my."\n";
	&sub2;
	print $my."\n";
	print our $our."\n";
	$our = "sub1-our";
}
sub sub2{
	our $my = "sub2-my";
	our $my = "sub2-my";
}
sub sub3{
	our($our,$my);
	print "sub3-".$our."\n";
	print "sub3-".$my."\n";
}