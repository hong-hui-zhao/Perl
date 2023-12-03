#!/usr/bin/perl

sub translate_frames {
    my $dna = shift;
    my @frames;

    # Forward frames
    for my $i (0..2) {
        my $subdna = substr($dna, $i);
        push @frames, "frame " . ($i+1) . ": " . translation($subdna);
    }

    # Reverse frames
    my $rc_dna = reverse($dna);
    $rc_dna =~ tr/ATCG/TAGC/;
    for my $i (0..2) {
        my $subdna = substr($rc_dna, $i);
        push @frames, "frame " . ($i+4) . ": " . translation($subdna);
    }

    return @frames;
}

sub translation {
    my $dna = shift;
    my $protein = "";

    for (my $i = 0; $i < (length($dna) - 2); $i += 3) {
        my $codon = substr($dna, $i, 3);

        if ($codon =~ /GC./) { $protein .= 'a' }
        elsif ($codon =~ /TG[TC]/) { $protein .= 'c' }
        elsif ($codon =~ /GA[TC]/) { $protein .= 'd' }
        elsif ($codon =~ /GA[AG]/) { $protein .= 'e' }
        elsif ($codon =~ /TT[TC]/) { $protein .= 'f' }
        elsif ($codon =~ /GG./) { $protein .= 'g' }
        elsif ($codon =~ /CA[TC]/) { $protein .= 'h' }
        elsif ($codon =~ /AT[TCA]/) { $protein .= 'i' }
        elsif ($codon =~ /AA[AG]/) { $protein .= 'k' }
        elsif ($codon =~ /TT[AG]CT./) { $protein .= 'l' }
        elsif ($codon =~ /ATG/) { $protein .= 'm' }
        elsif ($codon =~ /AA[TC]/) { $protein .= 'n' }
        elsif ($codon =~ /CC./) { $protein .= 'p' }
        elsif ($codon =~ /CA[AG]/) { $protein .= 'q' }
        elsif ($codon =~ /CG.|AG[AG]/) { $protein .= 'r' }
        elsif ($codon =~ /TC.|AG[TC]/) { $protein .= 's' }
        elsif ($codon =~ /AC./) { $protein .= 't' }
        elsif ($codon =~ /GT./) { $protein .= 'v' }
        elsif ($codon =~ /TGG/) { $protein .= 'w' }
        elsif ($codon =~ /TA[TC]/) { $protein .= 'y' }
        elsif ($codon =~ /TA[AG]TGA/) { $protein .= '*' }
        else { $protein .= '#' }
    }

    return $protein;
}

my $dna = "ATCGTGAAACCCGGGTTAATGA";
my @translation_results = translate_frames($dna);

foreach my $result (@translation_results) {
    print $result . "\n";
}
