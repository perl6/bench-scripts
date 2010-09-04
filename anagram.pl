# Code borrowed from http://rosettacode.org/wiki/Anagrams#Perl_6 
# Code by Util

my %anagram = slurp('five-letter-words.txt').words.classify( { .comb.sort.join } );
 
my $max = [max] map { +@($_) }, %anagram.values;
 
%anagram.values.grep( { +@($_) >= $max } )».join(' ')».say;