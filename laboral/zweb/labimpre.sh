:

DIREC=/u/dsl

"$DIREC"/bin/serverds @"$DIREC" "/!:laboral/labimpre.tab;$1" > "$DIREC"/laboral/zweb/labimpre.log 2> "$DIREC"/laboral/zweb/labimpre.err

chmod 777 "$2$1" 2>> "$DIREC"/laboral/zweb/labimpre.err
