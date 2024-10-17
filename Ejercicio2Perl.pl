#!/usr/bin/perl -w
use strict;
use warnings;
use List::Util qw( min max );

sub llenarNotas {
    my $var = $_[0];
    my @nota;
    for (my $indice = 0; $indice < $var * 2 - 1; $indice += 2) {
        print "Ingrese la nota N\°".($indice/2 + 1).": ";
        my $entrada = <STDIN>;
        chomp($entrada);
        $nota[$indice] = $entrada;
        $nota[$indice + 1] = $indice / 2 + 1;
    }
    return @nota;
}

my @notas = llenarNotas(4);
my %hash = @notas;

my $mayor_1 = max(values %hash);
my $menor_1 = min(values %hash);
$hash{$menor_1} = $mayor_1;

sub promedio {
    my @array = @_;
    my $suma = 0;
    my $count = 0;
    for (my $i = 0; $i < scalar(@array); $i += 2) {
        $suma += $array[$i];
        $count++;
    }
    return $suma / $count;
}

print promedio(values %hash);





