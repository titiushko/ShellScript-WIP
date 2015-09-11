#! /bin/bash
# HolaMundo.sh
clear
echo "Hola mundo, este es mi primer script."

# ScriptUno.sh
nombre="Perico"
apellidos="Palotes"
echo "Te llamas $nombre $apellidos"

# Fecha.sh
fecha=`date | cut -d " " -f 1,2,3`
hora=`date | cut -d " " -f 4`
echo "Hoy es $fecha y son las $hora"

# OtroScript.sh
# IFS es una variable de entorno que determina el delimitador de campos
# (que por defecto vale " "), en este script queremos
# cambiarlo a "," para escribir por teclado nombre,apellidos
IFS=","
read -p "Introduce el nombre,apellidos: " nombre apellidos
echo "El nombre es $nombre y los apellidos son $apellidos"
