:

# el programa esta preparado para ejecutar esta shell desde /usr/dsbin
# basta con copiarla ahi y cambiar a ruta de LDIRE, que es el directorio local

USER=agi
PASS=passwd
HOST=ftp.diagram.es
LDIRE=/u/dsprofe2/laboral/fich
DIRE=/public_html/tecnicos/MANGEL

cd $LDIRE
tar cvfz zDatos.tgz *.dat *.ddx *.ixx > zArchis.txt 2> zArchis.txt
tar zcvf zArchis.tgz zArchis.txt

COPIA="cd $DIRE\n"
COPIA=$COPIA"lcd $LDIRE\n"
COPIA=$COPIA"bin\n"
#COPIA=$COPIA"pass on\n"
COPIA=$COPIA"prompt off\n"
COPIA=$COPIA"mput zDatos.tgz\n"
COPIA=$COPIA"mput zArchis.tgz\n"
COPIA=$COPIA"close\n"
COPIA=$COPIA"quit\n"

printf "Copiando a $HOST:$DIRE/$RFICH\n";
printf "$COPIA" | /usr/bin/ftp ftp://$USER:$PASS@$HOST

rm $LDIRE/zDatos.tgz
rm $LDIRE/zArchis.*

exit 0
