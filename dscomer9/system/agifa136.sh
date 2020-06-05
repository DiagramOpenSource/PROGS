:
DNETCON=/u/basico        # directorio donde arranca el rwnetcon y se ubica el serverds
DBASICO=/u/dsempres      # directorio donde arranca la aplicacion, normalmente igual que el de arriba
DEFEMPR=agif0041         # def de acceso a la empresa
DPUNTOT=agifa136
DAPLICA=dscomer9

FICHTXT=$1              # fichero txt que incluye los valores de los campos
CODEMPR=$2              # codigo de empresa
PARAMET=$3              # parametro a pasarle al programa .tab

FICLOG=$DBASICO/$DAPLICA/system/$DPUNTOT.log
FICERR=$DBASICO/$DAPLICA/system/$DPUNTOT.err

#"$DNETCON"/bin/serverds @"$DBASICO" "/!:$DAPLICA/$DPUNTOT $DEFEMPR $CODEMPR{$FICHTXT};$PARAMET" > $FICLOG 2> $FICERR

"$DNETCON"/bin/serverds @"$DBASICO" "/!:$DAPLICA/$DPUNTOT $DEFEMPR $CODEMPR{$FICHTXT};$PARAMET"

#dspdf -i inf/agifa010.inf -s spo/agifa010.spo -p pdf/agifa010.pdf -j json/agifa010.json -x 1 -d pdf/detalle.txt 
