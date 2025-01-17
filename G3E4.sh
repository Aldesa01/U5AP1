#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <primer_valor> <operador> <segundo_valor>"
    exit 1
fi

primer_valor=$1
operador=$2
segundo_valor=$3

if ! [[ "$primer_valor" =~ ^-?[0-9]+$ ]] || ! [[ "$segundo_valor" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Ambos valores deben ser números enteros."
    exit 1
fi

case $operador in
    +)
        resultado=$(awk "BEGIN {print $primer_valor + $segundo_valor}")
        ;;
    -)
        resultado=$(awk "BEGIN {print $primer_valor - $segundo_valor}")
        ;;
    \*)
        resultado=$(awk "BEGIN {print $primer_valor * $segundo_valor}")
        ;;
    /)
        if [ "$segundo_valor" -eq 0 ]; then
            echo "Error: División entre 0 no permitida."
            exit 1
        fi
        resultado=$(awk "BEGIN {print $primer_valor / $segundo_valor}")
        ;;
    *)
        echo "Error: Operador no válido. Use uno de los siguientes: +, -, *, /"
        exit 1
        ;;
esac

echo "Resultado: $resultado"