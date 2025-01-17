#!/bin/bash

# Verificar si se ha pasado un argumento
if [ $# -eq 0 ]; then
  echo "Uso: $0 <número mayor que 0>"
  exit 1
fi

# Verificar si el argumento es un número mayor que 0
if [[ $1 =~ ^[0-9]+$ ]] && [ $1 -gt 0 ]; then
  valor=$1
else
  echo "Error: El argumento debe ser un número mayor que 0."
  echo "Uso: $0 <número mayor que 0>"
  exit 1
fi

# Mostrar el listado de números desde 0 hasta el valor introducido
echo "Listado de números desde 0 hasta $valor:"
for ((i = 0; i <= valor; i++)); do
  echo $i
done