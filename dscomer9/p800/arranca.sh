 :

# para que funcione el envio de correo hay que darle permisos 777 al directorio /var/spool/mqueue

PARAM=$1
DIREC=/u/dsempres             # cambiar segun instalacion

EMPRE=`cat "$DIREC"/dscomer9/p800/empresa_p800.txt`
EMAIL=`cat "$DIREC"/dscomer9/p800/email_p800.txt`

"$DIREC"/bin/serverds @"$DIREC" "/!:dscomer9/tecaz020.tab agif0041 $EMPRE;$PARAM" > "$DIREC"/dscomer9/p800/arranca.pan 2> "$DIREC"/dscomer9/p800/arranca.err &

SACAPID=`/bin/ps -awx | /usr/bin/fgrep serverds | /usr/bin/fgrep tecaz020 | awk '{print $1}'`

if [ $SACAPID ]
then
	echo "Se arranca .....: "`date` >> "$DIREC"/dscomer9/p800/arranca.log
	(printf "Subject: Arranca demonio P800\n\n"; printf "Arranca demonio P800 $PARAM\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 0
else
	echo "Arranque fallido: "`date` >> "$DIREC"/dscomer9/p800/arranca.log
	(printf "Subject: Arranque fallido demonio P800\n\n"; printf "Arranque fallido demonio P800\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 1
fi

