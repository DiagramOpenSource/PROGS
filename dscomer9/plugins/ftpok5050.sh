#!/bin/sh

HOST=$1
USU=$2
PAS=$3
ORG=$4
DES=$5
FER=$6

ftp -n <<FINFTP
       open $HOST      
       user $USU $PAS
       put $ORG $DES
       bye
FINFTP





