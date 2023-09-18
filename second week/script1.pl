#!/usr/bin/perl

use 5.010;

while($countup1 < 20){
	$random = rand 4;
	if($random<1){$DNA.= "A"}
	elsif($random<2){$DNA.= "T"}
	elsif($random<3){$DNA.= "G"}
	else{$DNA .= "C"}
	$countup1++;
}

print "Upper DNA:5'",$DNA,"3'\n";
while($countup2<length $DNA){
	if(substr($DNA,$countup2,1) eq "A"){$C_DNA.= "T"}
	elsif(substr($DNA,$countup2,1) eq "T"){$C_DNA.= "A"}
	elsif(substr($DNA,$countup2,1) eq "C"){$C_DNA.= "G"}
	else{$C_DNA.="C"}
	$countup2++;
}
print "Lower DNA:3'",$C_DNA,"5'\n";
$RC_DNA = reverse $C_DNA;
print "Lower DNA:5'",$RC_DNA,"3'\n";