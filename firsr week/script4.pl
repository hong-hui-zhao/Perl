#!/usr/bin/perl

use 5.010;


$protein = 'MATVSNMPLK';
$AA_MW = 120;
$pro_len = length($protein);
$pro_MW = $pro_len*$AA_MW;
$pro_MW  -= ($pro_len - 1)*18;
say "protein seq :",$protein;
say "AA number: ",$pro_len;
say "PROTEIN MW = ",$pro_MW;
