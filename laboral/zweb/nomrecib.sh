:

DIREC=/u/dsl

"$DIREC"/bin/serverds @"$DIREC" "/!:laboral/nomrecib.tab;$1" > "$DIREC"/laboral/zweb/nomrecib.log 2> "$DIREC"/laboral/zweb/nomrecib.err

chmod 777 "$2$1" 2>> "$DIREC"/laboral/zweb/nomrecib.err
#chmod 777 /u/dsempres/dsnetcom/dejawww/$1 2>> "$DIREC"/laboral/zweb/nomrecib.err
