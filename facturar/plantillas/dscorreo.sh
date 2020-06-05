:

DE=$1
ASUNTO=$3
CUERPO=$4
FICFIN=$6


rm $FICFIN

/usr/bin/smtp-cli  --host=smtp.soporte.diagram.net --user=ipabogad.smtp@soporte.diagram.net --pass=Control.Envio \
--auth-plain --from=$DE \
$PARA
$ADJUNTO
--subject "$ASUNTO" \
--body-plain $CUERPO

echo "FINALIZADO" > $FICFIN
