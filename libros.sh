#!/bin/bash

archivo="bdlibros.txt"

if [ ! -f "$archivo" ]; then
  echo "El archivo '$archivo' no existe. Asegúrate de haber añadido libros antes."
  exit 1
fi

mostrar_menu() {
  echo "Selecciona una opción:"
  echo "1) Buscar por título"
  echo "2) Buscar por año"
  echo "3) Buscar por editorial"
  echo "4) Buscar por género"
  echo "5) Insertar libro"
  echo "6) Salir"
}

buscar_por_titulo() {
  read -p "Introduce el título del libro que deseas buscar: " titulo
  grep -i "$titulo" "$archivo" && echo "Búsqueda completada." || echo "No se encontró el libro con el título '$titulo'."
}

buscar_por_ano() {
  read -p "Introduce el año del libro que deseas buscar: " año
  grep -i "$año" "$archivo" && echo "Búsqueda completada." || echo "No se encontraron libros del año '$año'."
}

buscar_por_editorial() {
  read -p "Introduce la editorial del libro que deseas buscar: " editorial
  grep -i "$editorial" "$archivo" && echo "Búsqueda completada." || echo "No se encontraron libros de la editorial '$editorial'."
}

buscar_por_genero() {
  read -p "Introduce el género del libro que deseas buscar: " genero
  grep -i "$genero" "$archivo" && echo "Búsqueda completada." || echo "No se encontraron libros del género '$genero'."
}

insertar_libro() {
  ./libros-anyadir.sh
}

while true; do
  mostrar_menu
  read -p "Opción seleccionada: " opcion

  case $opcion in
    1) buscar_por_titulo ;;
    2) buscar_por_ano ;;
    3) buscar_por_editorial ;;
    4) buscar_por_genero ;;
    5) insertar_libro ;;
    6) echo "Saliendo del programa..."; exit 0 ;;
    *) echo "Opción no válida. Por favor, selecciona una opción válida." ;;
  esac
done
