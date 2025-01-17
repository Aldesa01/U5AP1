#!/bin/bash

es_numero() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

while true; do
  read -p "Introduce la nota (entre 0 y 10): " nota
  
  if es_numero "$nota" && [ "$nota" -ge 0 ] && [ "$nota" -le 10 ]; then
    break
  else
    echo "Por favor, introduce una nota válida entre 0 y 10."
  fi
done

if [ "$nota" -lt 5 ]; then
  calificacion="Suspendido"
elif [ "$nota" -lt 6 ]; then
  calificacion="Aprobado"
elif [ "$nota" -lt 7 ]; then
  calificacion="Bien"
elif [ "$nota" -lt 9 ]; then
  calificacion="Notable"
else
  calificacion="Sobresaliente"
fi

echo "Tu calificación es: $calificacion"