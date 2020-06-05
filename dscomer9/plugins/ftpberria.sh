#!/bin/sh

HOST=$1
USU=$2
PASS=$3
ORG=$4
DES=$5

ftp -inv $HOST<<FINFTP
       user $USU $PASS
       binary
       put $ORG $DES
       bye
FINFTP

rm -f $ORG

wget "http://www.berria-racing.com/cargatablas.php?fichero="$DES
