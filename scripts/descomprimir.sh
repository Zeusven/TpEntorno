#!/bin/bash

echo "Ingrese el nombre del archivo que desea descomprimir: "
echo "Recuerde que las extensiones son <nombre>.tar.gz"
read ARCHIVO_DESCOMPRIMIR

echo "Ingrese el nombre del archivo con la suma de verificacion: "
echo "Recuerde que las extensiones son <nombre>.tar.gz.sha256"
read ARCHIVO_VERIFICACION

# Para hacer pruebas
ARCHIVO_DESCOMPRIMIR="$ARCHIVO_DESCOMPRIMIR.tar.gz"
ARCHIVO_VERIFICACION="$ARCHIVO_VERIFICACION.tar.gz.sha256"

# Busqueda de archivos
FLAG=0
if [ -f "../datasets/$ARCHIVO_DESCOMPRIMIR" ]
then
  echo "tar.gz encontrado"
else
  echo "tar.gz inexistente"
  (( FLAG+=1 ))
fi

if [ -f "../datasets/$ARCHIVO_VERIFICACION" ]
then
  echo "tar.gz.sha256 encontrado"
else
  echo "tar.gz.sha256 inexistente"
  (( FLAG+=1 ))
fi

# Control de verificacion
PARA_VERIFICAR1=$(sha256sum ../datasets/$ARCHIVO_DESCOMPRIMIR)
PARA_VERIFICAR2=$(cat ../datasets/$ARCHIVO_VERIFICACION)

if [ "$PARA_VERIFICAR1" == "$PARA_VERIFICAR2" ]
then
  echo "Descomprimiendo..."
  mkdir -p ../datasets/descomprimido
  tar -zxvf ../datasets/$ARCHIVO_DESCOMPRIMIR -C ../datasets/descomprimido
else
  echo "La suma de verificacion no coincide con el archivo indicado."
fi
