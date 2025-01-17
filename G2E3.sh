#!/bin/bash

suma=0
contador=0

while true; do
  read -p "Introduce un valor (0 para finalizar): " valor

  if [ "$valor" -eq 0 ]; then
    break
  fi

  suma=$((suma + valor))
  contador=$((contador + 1))
done

if [ $contador -gt 0 ]; then
  medio=$((suma / contador))
  echo "La suma total de los valores introducidos es: $suma"
  echo "El valor medio es: $medio"
else
  echo "No se han introducido valores."
fi