#!/bin/bash

reversa=false
if [ "$1" == "-r" ]; then
  reversa=true
  shift
fi

if [ $# -eq 0 ]; then
  echo "Uso: micat [opción] <ruta del archivo>"
  exit 1
fi

archivo="$1"

if [ -f "$archivo" ]; then
  if [ "$reversa" = true ]; then
    tac "$archivo"
  else
    cat "$archivo"
  fi
else
  echo "El archivo '$archivo' no existe."
  exit 1
fi