#!/bin/bash

read -p "Introduce la cantidad de litros de agua consumidos: " litros

if [ "$litros" -le 0 ]; then
  echo "El valor debe ser mayor que 0."
  exit 1
fi

coste=0

if [ "$litros" -le 50 ]; then
  coste=20
elif [ "$litros" -le 200 ]; then
  coste=20
  restante=$((litros - 50))
  coste=$(($coste + $restante * 20 / 100))
else
  coste=20
  restante_150=$((litros - 50 - 150))
  coste=$((coste + 150 * 20 / 100))
  if [ "$restante_150" -gt 0 ]; then
    coste=$((coste + restante_150 * 10 / 100))
  fi
fi

echo "El coste total del consumo de $litros litros es: €$coste"