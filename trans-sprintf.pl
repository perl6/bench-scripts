use v6;

my $pretty = ">> " ~ (". " x 20) ~ " <<" ;
                                    
for ^10
{
    my $format = $pretty.trans( ['>>',   '<<', '.']
                             => ['%2d','%-2d','%s'] );
    say sprintf $format, 1..22;    
}
