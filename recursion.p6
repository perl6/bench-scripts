use v6;

my $x = 0;
sub recur($n) { say $x++; recur($n-1) if $n>0; recur($n-1) if $n>0; }
recur(9);
