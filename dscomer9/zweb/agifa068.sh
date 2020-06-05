:

DIREC=/u/dsempres

APLIC=dscomer9
PROGR=agifa068
DEMPR=agif0041

#HORAL=`date +%y%m%d%H%M%S`
HORAL='mismo'

if [ ! $1 ]
then
	printf "\007Uso: poner el codigo de empresa como parametro\n";
	exit 1
else
	CEMPR=$1
fi

#"$DIREC"/bin/serverds @"$DIREC" "/!:$APLIC/$PROGR $DEMPR $CEMPR{$DIREC/$APLIC/zweb/$PROGR.txt}" > "$DIREC"/$APLIC/zweb/$PROGR.$HORAL.log 2> "$DIREC"/$APLIC/zweb/$PROGR.$HORAL.err
"$DIREC"/bin/serverds @"$DIREC" "/!:$APLIC/$PROGR $DEMPR $CEMPR{$DIREC/$APLIC/zweb/$PROGR.txt}"

#/usr/bin/gzip "$DIREC"/$APLIC/zweb/$PROGR.$HORAL.log
#/usr/bin/gzip "$DIREC"/$APLIC/zweb/$PROGR.$HORAL.err
