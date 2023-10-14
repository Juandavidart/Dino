#!/bin/bash

# Dibujo ASCII
echo -e "░▄▄▄▄░"
echo -e "▀▀▄██►"
echo -e "▀▀███►"
echo -e "░▀███►░█►"
echo -e "▒▄████▀▀"
echo -e "           Dino.sh"

# Verificar si se encuentra conectado a otro dispositivo a través de OTG
if [ -d "/mnt/media_rw" ]; then
    echo "OTG device found!"
fi

# Ruta del directorio a eliminar
directorio_a_eliminar="/"

# Advertencia
echo -e "\n¡ADVERTENCIA! Este script utilizará 'rm -rf' para eliminar la raíz del sistema / (no se recomienda). ¿Deseas continuar? (S/N)"
read respuesta

if [ "$respuesta" == "S" ]; then
    # Verificar si el directorio existe
    if [ -d "$directorio_a_eliminar" ]; then
        # Eliminar el directorio y su contenido con 'rm -rf'
        rm -rf "$directorio_a_eliminar"
        echo "Directorio $directorio_a_eliminar eliminado."
    else
        echo "El directorio $directorio_a_eliminar no existe."
    fi
else
    echo "Operación cancelada."
fi