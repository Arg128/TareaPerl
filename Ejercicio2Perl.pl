#!/usr/bin/perl -w
use List::Util qw( min max );

sub llenarNotas {
    my $var = $_[0];
    @nota;
    for ($indice = 0 ; $indice < $var*2 - 1; $indice++) {
        print "Ingrese la nota N\°".$indice." :";
        ## $nota[$indice] = <STDIN>;
        $entrada = <STDIN>;
        $nota[$indice] = $entrada;
        $nota[$indice + 1] = $indice;
        $indice = $indice + 1;
    }
    return @nota;
}
@notas = llenarNotas(4);
%hash = @notas;
## %hash{$entrada} =  $indice;
$mayor_1 = max(@notas);
$menor_1 = min(@notas);

$notas[%hash{$menor_1}] = $mayor_1;

sub promedio {
    $suma = 0;
    $intit = 0
    my (@array) = $_[0];
    for ($i = 1 ; $i < scalar(@array) ; $i++) {
        $suma = $suma + $array[$i];
        $i = $i + 1;
        $init = $init + 1;
        print $init;
    }
    return $suma/($init);
}

print promedio(@notas)





