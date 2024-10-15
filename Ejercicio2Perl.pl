#!/usr/bin/perl -w
use List::Util qw( min max );

@nota;
%hash;
for ($indice = 0 ; $indice < 4 ; $indice++) {
    print "Ingrese la nota N\°".$indice." :";
    ## $nota[$indice] = <STDIN>;
    $entrada = <STDIN>;
    unshift(@nota, $entrada);
    %hash{$entrada} = $indice;
    
}

$mayor_1 = max(@nota);
$menor_1 = min(@nota);

$nota[%hash{menor_1}] = $mayor_1;



