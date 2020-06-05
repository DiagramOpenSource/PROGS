:

# para que funcione el envio de correo hay que darle permisos 777 al directorio /var/spool/mqueue

DIREC=/u/dsempres     # cambiar segun instalacion

EMAIL=`cat "$DIREC"/dscomer9/palm/email_palm.txt`

SACAPID=`/bin/ps -awx | /usr/bin/fgrep serverds | /usr/bin/fgrep tecaz006 | awk '{print $1}'`

if [ $SACAPID ]
then
	kill -9 "$SACAPID" 2>>  "$DIREC"/dscomer9/palm/para.err
	echo "Se para ($SACAPID) ...: "`date` >> "$DIREC"/dscomer9/palm/para.log
	(printf "Subject: Parada demonio PALM\n\n"; printf "Parada demonio PALM\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 0
else
	echo "Fallo el kill ........: "`date` >> "$DIREC"/dscomer9/palm/para.log
	(printf "Subject: Parada fallida PALM\n\n"; printf "Parada fallida PALM\n") | /usr/sbin/sendmail -F"alba.in" $EMAIL
	exit 1
fi

