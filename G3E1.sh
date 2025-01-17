#!/bin/bash

read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2

if [ "$num1" -gt "$num2" ]; then
  echo "El primer número ($num1) es mayor que el segundo ($num2)."
elif [ "$num1" -lt "$num2" ]; then
  echo "El segundo número ($num2) es mayor que el primero ($num1)."
else
  echo "Ambos números son iguales."
fi
