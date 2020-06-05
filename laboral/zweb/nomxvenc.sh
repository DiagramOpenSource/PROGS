:

DIREC=/u/dsl

"$DIREC"/bin/serverds @"$DIREC" "/!:laboral/nomxvenc.tab;$1" > "$DIREC"/laboral/zweb/nomxvenc.log 2> "$DIREC"/laboral/zweb/nomxvenc.err

chmod 777 "$2$1" 2>> "$DIREC"/laboral/zweb/nomxvenc.err
#chmod 777 /u/dsempres/dsnetcom/dejawww/$1 2>> "$DIREC"/laboral/zweb/nomxvenc.err
