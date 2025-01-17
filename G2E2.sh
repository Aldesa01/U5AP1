#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Uso: $0 <número mayor que 0>"
  exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -le 0 ]; then
  echo "Error: El argumento debe ser un número mayor que 0."
  echo "Uso: $0 <número mayor que 0>"
  exit 1
fi

numero=$1

if [ $((numero % 2)) -eq 0 ]; then
  echo "El número $numero es par."
else
  echo "El número $numero es impar."
fi