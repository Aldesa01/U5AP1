#!/bin/bash

archivo="bdlibros.txt"

if [ ! -f "$archivo" ]; then
  touch "$archivo"
  echo "El archivo '$archivo' no existía, se ha creado."
fi

echo "Selecciona un género para el libro:"
echo "1. Ficción"
echo "2. No Ficción"
echo "3. Ciencia Ficción"
echo "4. Fantasía"
echo "5. Biografía"
echo "6. Historia"
read -p "Ingresa el número del género deseado: " genero

case $genero in
  1) genero_nombre="Ficción" ;;
  2) genero_nombre="No Ficción" ;;
  3) genero_nombre="Ciencia Ficción" ;;
  4) genero_nombre="Fantasía" ;;
  5) genero_nombre="Biografía" ;;
  6) genero_nombre="Historia" ;;
  *) echo "Género no válido. Se usará 'Desconocido'."; genero_nombre="Desconocido" ;;
esac

read -p "Introduce el título del libro: " titulo
read -p "Introduce el año de publicación del libro: " ano
read -p "Introduce la editorial del libro: " editorial

linea="$titulo|$ano|$editorial|$genero_nombre"

echo "$linea" >> "$archivo"

echo "El libro '$titulo' ha sido añadido a la base de datos."