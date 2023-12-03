#!/usr/bin/perl

sub translation {
    my ($dna, $strand, $frame) = @_;
    my $protein = "";

    if ($strand eq 's') {
        my $subdna = substr($dna, $frame-1);
        for (my $i = 0; $i < (length($subdna) - 2); $i += 3) {
            my $codon = substr($subdna, $i, 3);
            $protein .= translate_codon($codon);
        }
    } elsif ($strand eq 'a') {
        my $rc_dna = reverse($dna);
        $rc_dna =~ tr/ATCG/TAGC/;
        my $subdna = substr($rc_dna, $frame-1);
        for (my $i = 0; $i < (length($subdna) - 2); $i += 3) {
            my $codon = substr($subdna, $i, 3);
            $protein .= translate_codon($codon);
        }
    }

    return $protein;
}

sub translate_codon {
    my $codon = shift;

    if ($codon =~ /GC./) { return 'a' }
    elsif ($codon =~ /TG[TC]/) { return 'c' }
    elsif ($codon =~ /GA[TC]/) { return 'd' }
    elsif ($codon =~ /GA[AG]/) { return 'e' }
    elsif ($codon =~ /TT[TC]/) { return 'f' }
    elsif ($codon =~ /GG./) { return 'g' }
    elsif ($codon =~ /CA[TC]/) { return 'h' }
    elsif ($codon =~ /AT[TCA]/) { return 'i' }
    elsif ($codon =~ /AA[AG]/) { return 'k' }
    elsif ($codon =~ /TT[AG]CT./) { return 'l' }
    elsif ($codon =~ /ATG/) { return 'm' }
    elsif ($codon =~ /AA[TC]/) { return 'n' }
    elsif ($codon =~ /CC./) { return 'p' }
    elsif ($codon =~ /CA[AG]/) { return 'q' }
    elsif ($codon =~ /CG.|AG[AG]/) { return 'r' }
    elsif ($codon =~ /TC.|AG[TC]/) { return 's' }
    elsif ($codon =~ /AC./) { return 't' }
    elsif ($codon =~ /GT./) { return 'v' }
    elsif ($codon =~ /TGG/) { return 'w' }
    elsif ($codon =~ /TA[TC]/) { return 'y' }
    elsif ($codon =~ /TA[AG]TGA/) { return '*' }
    else { return '#' }
}

print "Enter the DNA sequence: ";
my $dna = <STDIN>;
chomp $dna;

print "Enter the strand type (s for sense, a for antisense): ";
my $strand = <STDIN>;
chomp $strand;

print "Enter the frame value (1, 2, or 3): ";
my $frame = <STDIN>;
chomp $frame;

my $translation_result = translation($dna, $strand, $frame);
print "Translation result: $translation_result\n";