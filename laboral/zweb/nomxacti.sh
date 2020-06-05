:

DIREC=/u/dsl

"$DIREC"/bin/serverds @"$DIREC" "/!:laboral/nomxacti.tab;$1" > "$DIREC"/laboral/zweb/nomxacti.log 2> "$DIREC"/laboral/zweb/nomxacti.err

chmod 777 "$2$1" 2>> "$DIREC"/laboral/zweb/nomxacti.err
#chmod 777 /u/dsempres/dsnetcom/dejawww/$1 2>> "$DIREC"/laboral/zweb/nomxacti.err
