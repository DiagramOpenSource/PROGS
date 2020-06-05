#!/bin/sh

DE=$1
ASUNTO=$3
FICHTM=$4
FICAT1=$5
FICFIN=$6
FICERR=$FICFIN.err

rm $FICFIN
rm $FICERR

mkdir -p  /var/log/diagram/

USER="gad.smtp@soporte.diagram.net"
PASS="Control.Envio"
HOST="smtp.soporte.diagram.net"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

XPARAM="para_smtpcli.txt"

if [ ! $DIR ]
then
   DIR="$( dirname "$FICFIN" )"
fi

FICPARAM=$DIR/$XPARAM

if [ -f $FICPARAM ]
then
   . $FICPARAM
fi

/usr/bin/smtp-cli  --host=$HOST --user=$USER --pass=$PASS \
--auth --from=$DE \
$PARA 
--subject "$ASUNTO" \
$ADJUNTO 
--body-plain "Su cliente de correo no soporta mensajes HTML" \
--body-html $FICHTM --attach-inline $FICAT1 \
2>> $FICERR


if [ -f $FICERR ]
then
   cat $FICERR >> /var/log/diagram/smtp_cli_log.txt
fi

echo "FINALIZADO" > $FICFIN
