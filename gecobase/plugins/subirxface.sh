#!/bin/bash
# sftp para dejar en xface las facturas, que luego se enviaran usando peticion.py al WS de Zerocoma

# Parametros:
# carpeta nombre_factura path_completo_a_la_factura
#
# Ejemplo:
# bash subirxface.sh diagram facturadiagram0000304.xml /tmp/ccc/facturadiagram0000304.xml


USUARIO="zerocoma"
SERVIDOR="xface.dv.diagram.net"

CARPETA=$1
FICHERO=$2
PATHFACTURA=$3

PATH_DESTINO=$CARPETA/facturas/


# Primero creamos el directorio destino si no existe
ssh  -o 'StrictHostKeyChecking no' \
     $USUARIO@$SERVIDOR -p 22 \
     /bin/mkdir -p $PATH_DESTINO > /tmp/log_subirxface.log 2> /tmp/log_subirxface.err

# Luego enviamos la factura
scp  -o 'StrictHostKeyChecking no' \
     $PATHFACTURA $USUARIO@$SERVIDOR:$PATH_DESTINO/$FICHERO >> /tmp/log_subirxface.log 2>> /tmp/log_subirxface.err
