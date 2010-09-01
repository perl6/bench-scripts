use v6;

sub recur($n) { say $n; recur($n-1) if $n>0; }
recur(12);
