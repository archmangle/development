#!/usr/bin/perl
#An exploration of the binary search algorithm
#tgw 17052013

$word = "psi";
#my @array = (alpha, beta, gamma, delta, epsilon, zeta, eta, theta, omega, phi, pi, psi, omicron);
#my @werds = (alpha, beta, gamma, delta, epsilon, zeta, eta, theta, omega, phi, pi, psi, omicron);
#produces output like the following:
#D: INDEX: 0 WORD: a
#D: INDEX: 1 WORD: b
#D: INDEX: 2 WORD: c
#D: INDEX: 3 WORD: d
#D: INDEX: 4 WORD: e
#D: INDEX: 5 WORD: f
#D: INDEX: 6 WORD: g


my @array = (a,b,c,d,e,f,g);
my @werds = (a,b,c,d,e,f,g);

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
		#$low = $try+1, next if $array->[$try] lt $word;
		#re-interpreting the above
		if($array->[$try] lt $word){
			$low = $try+1;
			next;
		}
		#$high = $try-1, next if $array->[$try] gt $word;
		#re-interpreting the above
		if($array->[$try] gt $word){
			$high = $try-1;
			next;
		}
		print "TRY: $try \n";
		return $try;
	}
	return;
}
