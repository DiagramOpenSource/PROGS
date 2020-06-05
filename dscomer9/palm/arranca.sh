:

# para que funcione el envio de correo hay que darle permisos 777 al directorio /var/spool/mqueue

DIREC=/u/dsempres             # cambiar segun instalacion

EMPRE=`cat "$DIREC"/dscomer9/palm/empresa_palm.txt`
EMAIL=`cat "$DIREC"/dscomer9/palm/email_palm.txt`

"$DIREC"/bin/serverds @"$DIREC" "/!:dscomer9/tecaz006.tab agif0041 $EMPRE;auto" > "$DIREC"/dscomer9/palm/arranca.pan 2> "$DIREC"/dscomer9/palm/arranca.err &

SACAPID=`/bin/ps -awx | /usr/bin/fgrep serverds | /usr/bin/fgrep tecaz006 | awk '{print $1}'`

if [ $SACAPID ]
then
	echo "Se arranca .....: "`date` >> "$DIREC"/dscomer9/palm/arranca.log
	(printf "Subject: Arranca demonio PALM\n\n"; printf "Arranca demonio PALM\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 0
else
	echo "Arranque fallido: "`date` >> "$DIREC"/dscomer9/palm/arranca.log
	(printf "Subject: Arranque fallido demonio PALM\n\n"; printf "Arranque fallido demonio PALM\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 1
fi

