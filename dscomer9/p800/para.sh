:

# para que funcione el envio de correo hay que darle permisos 777 al directorio /var/spool/mqueue

DIREC=/u/dsempres     # cambiar segun instalacion

EMAIL=`cat "$DIREC"/dscomer9/palm/email_p800.txt`

SACAPID=`/bin/ps -awx | /usr/bin/fgrep serverds | /usr/bin/fgrep tecaz020 | awk '{print $1}'`

if [ $SACAPID ]
then
	kill -9 "$SACAPID" 2>>  "$DIREC"/dscomer9/p800/para.err
	echo "Se para ($SACAPID) ...: "`date` >> "$DIREC"/dscomer9/p800/para.log
	(printf "Subject: Parada demonio P800\n\n"; printf "Parada demonio P800\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 0
else
	echo "Fallo el kill ........: "`date` >> "$DIREC"/dscomer9/p800/para.log
	(printf "Subject: Parada fallida P800\n\n"; printf "Parada fallida P800\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 1
fi

