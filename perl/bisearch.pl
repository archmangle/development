#!/usr/bin/perl
#An exploration of the binary search algorithm
#tgw 17052013

$word = "psi";
my @array = (alpha, beta, gamma, delta, epsilon, zeta, eta, theta, omega, phi, pi, psi, omicron);
my @werds = (alpha, beta, gamma, delta, epsilon, zeta, eta, theta, omega, phi, pi, psi, omicron);

foreach my $word (@werds){
 $index = binary_search(\@array,$word);
 print "D: INDEX: $index WORD: $word \n";
}

sub binary_search {
	my ($array,$word) = @_;
	my ($low,$high) = (0, (@$array -1));
	print "(initialising) HIGH: $high LOW: $low \n";
	while( $low <= $high ){
		print "D: $low : $high \n";
		$try = int(($low+$high)/2);
		$low = $try+1, next if $array->[$try] lt $word;
		$high = $try-1, next if $array->[$try] gt $word;
		print "TRY: $try \n";
		return $try;
	}
	return;
}
