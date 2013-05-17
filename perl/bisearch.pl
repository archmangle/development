#!/usr/bin/perl
#An exploration of the binary search algorithm
#tgw 17052013
$word = "psi";
my @array = (alpha, beta, gamma, delta, epsilon, zeta, eta, theta, omega, phi, pi, psi, omicron);
$index = binary_search(\@array, $word);
print "D: $index -> $word \n";
my $cnt = 0;
foreach my $ind (@array){
#	print "D: INDEX: $cnt WORD: $ind \n";
	$cnt++;
}
sub binary_search {
	my ($array, $word) = @_;
	my ($low, $high) = (0, @$array - 1);
	my $monkey = @$array-1;
	#debug point:
	#print "D: High: $high , \@\$array - one is : "."$monkey"."\n";
	while( $low <= $high ){
		print "D0: $low ~ $high WORD: $word\n";
		my $try = int(($low+$high)/2);
		$low = $try+1, next if $array->[$try] lt $word;
		$test = $array->[$try];
		print "D1: $test ~ $word \n";
		$high = $try+1, next if $array->[$try] gt $word;
		$test = $array->[$try];
		print "D2: $test ~ $word\n";
		return $try;
	}
	return;
}
