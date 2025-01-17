#!/bin/bash

es_valido() {
  [[ $1 =~ ^[0-9]+$ ]] && [ $1 -ge 1 ] && [ $1 -le 30 ]
}

while true; do
  echo "Introduce un valor numérico del día del mes (de 1 a 30):"
  read dia

  if es_valido "$dia"; then
    break
  else
    echo "El valor introducido no es válido."
  fi
done

primer_dia="lunes"

dias_semana=("lunes" "martes" "miércoles" "jueves" "viernes" "sábado" "domingo")

indice=$(( (dia - 1) % 7 ))

echo "El día $dia del mes cae en un ${dias_semana[$indice]}."