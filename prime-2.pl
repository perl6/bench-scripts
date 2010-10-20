my sub next-prime(*@primes) {
    my $i = @primes[*-1];
    return 3 if $i == 2;
    loop {
        $i += 2;
        my $prime = True;
        for @primes {
            if $i %% $_ {
                $prime = False;
                last;
            }
        }
        return $i if $prime;
    }
}

my @primes := 2, 3, &next-prime ... *;

say @primes.munch(350).perl;