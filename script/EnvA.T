#!/bin/bash

a=192.168.0.
#pedir el ultimo digito del ip
echo "numero" 
read s
#concatenar variable a con variable s
b=$a$s
echo "ingrese la ruta del archivo"
read rut
echo "Conectando..."
echo "ingrese la contraseña"
#conectar a termux
scp -P 8022 $rut user@$b:/data/data/com.termux/files/home/
