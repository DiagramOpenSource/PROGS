:

DIREC=/u/dsl
EMPRESA=`cat "$DIREC"/dscomer9/wempresa.txt`

"$DIREC"/bin/serverds @"$DIREC" "/!:dscomer9/web20011.tab agif0041 $EMPRESA;$1" > "$DIREC"/dscomer9/wpedidos.log 2> "$DIREC"/dscomer9/wpedidos.err

#chmod 777 /u/cogewww/* 2>> "$DIREC"/dscomer9/wpedidos.err
