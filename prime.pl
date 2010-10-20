my sub next-prime(*@primes) {
    my $i = @primes[*-1];
    return 3 if $i == 2;
    loop {
        $i += 2;
        return $i unless [||] $i <<%%<< @primes;
    }
}

my @primes := 2, 3, &next-prime ... *;

say @primes.munch(100).perl;