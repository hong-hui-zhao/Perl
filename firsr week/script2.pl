#!/usr/bin/perl

use 5.010;


say q{"$a,@a,%a,'"};
say qq["$a,@a,%a,"];
say qq["\$a,\@a,\%a,'"];
say q*"\$a,\@a,\%a,'"*;
