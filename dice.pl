my $chars-to-roll = 600;
my @count = 0 xx 20;

for ^$chars-to-roll {
    my @a = (^6).map({ [+] (1..6).roll(4).sort(-*)[^3] }).sort(-*);
    for @a { @count[$_]++ };
    # say ~@a;
}

say " ";

for 3..18 {
    say "$_ rolled { @count[$_] } times ({ @count[$_] / ($chars-to-roll * 6) * 100 }%)";
}

