:

DE=$1
ASUNTO=$3
FICHTM=$4
FICAT1=$5
FICFIN=$6


rm $FICFIN

/usr/bin/smtp-cli  --host=smtp.soporte.diagram.net --user=ipabogad.smtp@soporte.diagram.net --pass=Control.Envio \
--auth-plain --from=$DE \
$PARA
--subject "$ASUNTO" \
$ADJUNTO 
--body-plain "Su cliente de correo no soporta mensajes HTML" \
--body-html $FICHTM $FICAT1

echo "FINALIZADO" > $FICFIN
