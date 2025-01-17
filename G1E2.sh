#!/bin/bash

es_valido() {
  [[ $1 =~ ^[0-9]+$ ]] && [ $1 -gt 0 ]
}

while true; do
  echo "Introduce un número mayor que 0:"
  read numero

  if es_valido "$numero"; then
    break
  else
    echo "El valor introducido no es válido."
  fi
done

# Verificar si el número es par o impar
if [ $((numero % 2)) -eq 0 ]; then
  echo "El número $numero es par."
else
  echo "El número $numero es impar."
fi
