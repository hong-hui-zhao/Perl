#!/usr/bin/perl

use 5.010;
$seq = "CAADCBCABCDE";
if (!defined pos($seq)) {
    print "pos(\$seq) = undef\n";
}
if ($seq =~ /A.C/g) {
    print "\$& = $&\n";
}
print "pos(\$seq) = ", pos($seq), "\n";
if ($seq =~ /A.C/g) {
    print "\$& = $&\n";
}
print "pos(\$seq) = ", pos($seq), "\n";
if ($seq !~ /A.C/g) {
    print "\$& = No match\n";
}
if (!defined pos($seq)) {
    print "pos(\$seq) = undef\n";
}
while ($seq =~ /A.C/g) {
    print "index: ", pos($seq) - length($&), "\tmatch: $&\n";
}
