#!/bin/bash


i
if [ $# -eq 0 ]; then
  echo "Uso: informa <ruta del archivo>"
  
  exi
exit 1
fi

archivo="$1"


i
if [ ! -e "$archivo" ]; then
  
  ech
echo "El archivo o directorio '$archivo' no existe."
  exit 1
fi


i
if [ -d "$archivo" ]; then
  tipo=
  ti
"directorio"
elif [ -f "$archivo" ]; then
  tipo=
  
"fichero regular"
elif [ -L "$archivo" ]; then
  tipo=
  tip
"enlace simbólico"
else
  tipo=
 
"otro tipo de archivo"

f
fi

permisos=
perm
""
if [ -r "$archivo" ]; then
  permisos=
  perm
"lectura"
fi
if [ -w "$archivo" ]; then
  permisos="$permisos, escritura"
fi
if [ -x "$archivo" ]; then
  permisos="$permisos, ejecución"
fi
if [ -z "$permisos" ]; then
  permisos="sin permisos"
fi

if [ -O "$archivo" ]; then
  propietario=
  propietario

  
"Sí"
else
  propietario=
  propiet
"No"
fi

if [ ! -s "$archivo" ]; then
  vacio="El archivo está vacío."
else
  vacio=
  vacio
"El archivo no está vacío."
fi

echo "Información sobre el archivo '$archivo':"
echo "1. Tipo de archivo: $tipo"

e
echo "2. Permisos del usuario: $permisos"

e
echo "3. ¿Eres propietario del archivo?: $propietario"

e
echo "4. ¿Está vacío?: $vacio"