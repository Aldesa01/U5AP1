#!/bin/bash

read -p "Introduce la primera cadena de caracteres: " cadena1
read -p "Introduce la segunda cadena de caracteres: " cadena2

if [ "$cadena1" == "$cadena2" ]; then
  echo "Las cadenas son iguales."
else
  echo "Las cadenas son diferentes."
fi