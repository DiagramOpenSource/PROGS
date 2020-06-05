#!/bin/bash

# Ejecución petición al WS de Zerocoma

# echo "$@"

USUARIO="zerocoma"
SERVIDOR="xface.dv.diagram.net"


# ATACA AL PRO
#Lanzamos proceso de ejecucion de zerocomapro.py pasandole los parametros que recibimos
ssh  -o 'StrictHostKeyChecking no' \
     $USUARIO@$SERVIDOR -p 22 \
     /usr/bin/python zerocomapro.py "$@"
