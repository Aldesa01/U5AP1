#!/bin/bash

read -p "¿Cuántos números aleatorios deseas generar? " cantidad

read -p "Introduce el valor mínimo: " minimo

read -p "Introduce el valor máximo: " maximo

if [ "$cantidad" -le 0 ] || [ "$minimo" -ge "$maximo" ]; then
  echo "La cantidad debe ser mayor que 0 y el valor mínimo debe ser menor que el valor máximo."
  exit 1
fi

echo "Los números aleatorios generados son:"
for ((i=0; i < cantidad; i++)); do
  num=$((RANDOM % (maximo - minimo + 1) + minimo))
  echo "$num"
done
