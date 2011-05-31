my $two = 2;
my $three = 3;
my $five-four-one = 541;

sub next-prime(@primes) {
    my $i = @primes[*-1];
    return $three if $i == $two;
    loop {
        $i += $two;
        return $i unless @primes.first($i %% *);
    }
}

my @primes = $two, $three;
while @primes[*-1] < $five-four-one {
    @primes.push(next-prime(@primes));
}

say ~@primes;

