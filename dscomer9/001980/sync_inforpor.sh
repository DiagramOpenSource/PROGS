:

DIREC=$1
LOG=$DIREC"sync_inforpor.log"   
ERR=$DIREC"sync_inforpor.err"   

IPWEB=192.168.14.12
ETQDIR=pdfs

date > $LOG
date > $ERR

printf "\n" >> $LOG
printf "\n" >> $ERR

printf "PRIEGO 20120625: Se quita para optimizar rendimientos, compartiendo la carpeta entre GECO y WINWEB) \n" >> $LOG
printf "PRIEGO 20120625: Se quita para optimizar rendimientos, compartiendo la carpeta entre GECO y WINWEB) \n" >> $ERR

#/usr/bin/rsync -avz --delete $DIREC/albaranes/ $IPWEB::$ETQDIR/albaranes >> $LOG 2>> $ERR
#/usr/bin/rsync -avz --delete $DIREC/facturas/ $IPWEB::$ETQDIR/facturas >> $LOG 2>> $ERR
