#!/bin/bash
# sftp para recoger de xface las respuestas de las peticiones 

# Parametros:
# carpeta nombre_fichero_peticion path_destino
#
# Ejemplo:
# bash recoger.sh diagram 20180611120300.txt /tmp/ccc


USUARIO="zerocoma"
SERVIDOR="xface.dv.diagram.net"

CARPETA=$1
FICHERO=$2
PATHLOCAL=$3

mkdir -p $PATHLOCAL

PATH_RESPUESTAS=$CARPETA/respuestas

echo $PATH_COMPLETO

# Luego nos traemos el fichero
scp  -o 'StrictHostKeyChecking no' \
     $USUARIO@$SERVIDOR:$PATH_RESPUESTAS/$FICHERO $PATHLOCAL/$FICHERO > /tmp/log_recogerxface.log 2> /tmp/log_recogerxface.err
