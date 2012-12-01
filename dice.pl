my &safe-roll = (try { (1..6).pick(4, :replace) })
    ?? ({ $^a.pick: $^b, :replace })
    !! ({ $^a.roll: $^b });

my $chars-to-roll = 600;
my @count = 0 xx 20;

for ^$chars-to-roll {
    my @a = (^6).map({ [+] safe-roll(1..6, 4).sort(-*)[^3] }).sort(-*);
    for @a { @count[$_]++ };
    # say ~@a;
}

say " ";

for 3..18 {
    say "$_ rolled { @count[$_] } times ({ @count[$_] / ($chars-to-roll * 6) * 100 }%)";
}

