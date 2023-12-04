#!/usr/bin/perl


my $filename = "chengfa.txt";
open(my $fh, ">", $filename) or die "Cannot open file '$filename' for writing: $!";

# foreach 循环
foreach my $i (1..9) {
    foreach my $j (1..$i) {
        my $var = $j * $i;
        print "$j*$i=$var\t";
        print $fh "$j*$i=$var\t";
    }
    print "\n";
    print $fh "\n";
}

close $fh;
