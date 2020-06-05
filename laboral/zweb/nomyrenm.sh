:

DIREC=/u/dsl

"$DIREC"/bin/serverds @"$DIREC" "/!:laboral/nomyrenm.tab;$1" > "$DIREC"/laboral/zweb/nomyrenm.log 2> "$DIREC"/laboral/zweb/nomyrenm.err

chmod 777 "$2$1" 2>> "$DIREC"/laboral/zweb/nomyrenm.err
#chmod 777 /u/dsempres/dsnetcom/dejawww/$1 2>> "$DIREC"/laboral/zweb/nomyrenm.err
