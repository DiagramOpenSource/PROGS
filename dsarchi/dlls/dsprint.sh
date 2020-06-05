#!/bin/sh

HUI=`date +%d_%m_%Y_%H_%M_%S:`
RUTA=$3

#Funcion para comprobar si existe la impresora.
existeImpresora()
{
lpstat -p $1 > /dev/null 2>&1

if [ $? == 0 ]; then
	
	echo "$HUI La impresora existe." >> $RUTA/dsprint.log	
	return 1
else
	echo "$HUI La impresora seleccionada no es correcta. [$1]" >> $RUTA/dsprint.err
	exit
fi
}

#Funcion para comprobar si el fichero que llega es tipo PDF
esPdf()
{
#Comprobamos si existe el fichero PDF
if [ ! -f $1 ]; then
        echo "$HUI No existe el fichero PDF." >> $RUTA/dsprint.err
        exit
else
	echo "$HUI El fichero existe" >> $RUTA/dsprint.log
	esPdf=$(file $1 | grep -o PDF | head -1)

	if [ $esPdf == "PDF" ]; then
       		echo "$HUI Es un archivo PDF." >> $RUTA/dsprint.log
        	return 1
	else
        	echo "$HUI NO es un PDF." >> $RUTA/dsprint.err
        	exit
	fi
fi
}

#Hacemos las comprobaciones
existeImpresora $1
esPdf $2

#Convertimos el fichero PDF a PS
pdf2ps $2 $2.ps > /dev/null 2>&1

#Comprobamos si se ha creado correctamente el fichero PS
if [ ! -f $2.ps ]; then
	echo "$HUI No se ha generado el fichero PS." >> $RUTA/dsprint.err
	exit
else
	echo "$HUI Fichero PS generado correctamente." >> $RUTA/dsprint.log
fi 

#Redimensionamos el ps a 20cmx29cm
psresize -w20cm -h29cm -Pa4 $2.ps $2mini.ps > /dev/null 2>&1

#Lanzamos la impresion
lp -d $1 $2mini.ps
echo "$HUI Imprimiendo $2 por $1" >> $RUTA/dsprint.log

#Borramos los ficheros PS
rm -f $2.ps > /dev/null 2>&1
rm -f $2mini.ps > /dev/null 2>&1

echo "$HUI Se borra el fichero" >> $RUTA/dsprint.log
echo "-----------------------------------------------------" >> $RUTA/dsprint.log
