#!/usr/bin/perl

$re_or_not = 1;
OUTER:while($re_or_not){
	$random = rand 4;
	if($random<1){$DNA ="A";$C_DNA ="T"}
	
	elsif($random<2){$DNA ="T";$C_DNA ="A"}
	
	elsif($random<3){$DNA ="G";$C_DNA ="C"}
	
	else{$DNA = "C";$C_DNA ="G"}

$countdown = 3;
print "The DNA basr is $DNA,please input the complementary base.\nPress R to replay.\n";
while($countdown>0){
	$input = <STDIN>;
	chomp $input;
	if($input eq $C_DNA){print "You are right!\n";last}
	elsif($input eq "R"){next OUTER}
	else{print "You are wrong!\n";$countdown--}
}
print "the complementary base is $C_DNA.";
print "\nReplay(ANYKEY+Enter) or Not(0+Enter)\n";
$re_or_not=<STDIN>;
chomp $re_or_not;
}
print "Bye bye!\n"

