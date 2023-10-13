#!/usr/bin/perl

print "Please enter 10 integers:\n";
my @array;
for (my $i=0; $i<10; $i++) {
    chomp(my $input = <STDIN>);
    push @array, $input;
}

print "Before sorting: @array\n";

for my $i (0 .. $#array) {
    for my $j (0 .. $#array - $i - 1) {
        if ($array[$j] > $array[$j+1]) {
            @array[$j, $j+1] = @array[$j+1, $j];
        }
    }
}

print "After sorting: @array\n";


