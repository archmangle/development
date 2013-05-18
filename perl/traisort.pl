#!/usr/bin/perl
#Assorted searches and sorts
#tgw 18052013

my $search_word = "g";
my @character_array = (a,b,c,d,e,f,g,h);
my @number_array = (1,2,3,4,5,6);

$index = bisort(\@character_array,$search_word);

print "D: Found the index of $search_word: $index \n";

sub bisort{
	#find the the index of a letter in an
	#array.
	my ($arr,$character) = @_;
	my $high = @$arr-1;
	my $low = 0;
	my $test = int(($low+$high)/2);
	my @words = @$arr;
	my $word = $character;
	#initialise a high and a low endpoint index
	while($low <= $high){
		$test = int(($low+$high)/2);
	
		print "D: Testing @words[$test] \n";
		if(@words[$test] lt $word){
			print "D: skipping index: $test for word: $word \n";	
			$low = $test+1;
			next;
		};
		if(@words[$test] gt $word){
			print "D: skipping index: $test for word: $word ...\n";	
			$high = $test-1;
			next;
		}
		if(@words[$test] eq $word){
			print "D: $words->[$test] equals $word , returning index: $test\n";
			return $test;
		}

		return $test;
	}
}
