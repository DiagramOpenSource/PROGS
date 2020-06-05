#!/bin/sh

PROGRAMA=$1
ARGUMENTO=$2

if [ -f /usr/local/bin/python ]; then
	/usr/local/bin/python $PROGRAMA $ARGUMENTO
fi

if [ -f /usr/bin/python ]; then
	/usr/bin/python $PROGRAMA $ARGUMENTO
fi

