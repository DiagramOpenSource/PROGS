#!/bin/bash

# Ejecución petición al WS de Zerocoma

# echo "$@"

USUARIO="zerocoma"
SERVIDOR="xface.dv.diagram.net"


#Lanzamos proceso de ejecucion de zerocoma.py pasandole los parametros que recibimos
ssh  -o 'StrictHostKeyChecking no' \
     $USUARIO@$SERVIDOR -p 22 \
     /usr/bin/python zerocoma.py "$@"


