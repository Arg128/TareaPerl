#!/usr/bin/perl -w
use List::Util qw( min max );

@nota;
for ($indice = 0 ; $indice < 4 ; $indice++) {
    print "Ingrese la nota N\°".$indice." :";
    ## $nota[$indice] = <STDIN>;
    $entrada = <STDIN>;
    $nota[$indice] = $entrada;
    $nota[$indice + 1] = $indice;
    $indice = $indice + 1;
}

%hash = @nota;
## %hash{$entrada} =  $indice;
$mayor_1 = max(@nota);
$menor_1 = min(@nota);

$nota[%hash{$menor_1}] = $mayor_1;

print @nota;

sub promedio {
    $suma = 0;
    my (@array) = $_[0];
    for ($i = 1 ; $i < scalar(@array) ; $i++) {
        $suma = $suma + $array[$i];
        $i = $i + 1;
    }
    return $suma/($i);
}

print promedio(@nota);





