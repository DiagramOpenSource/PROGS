:

# ESTADO PEDIDOS

DIREC=/u/dsl
EMPRESA=`cat "$DIREC"/dscomer9/wempresa.txt`

"$DIREC"/bin/serverds @"$DIREC" "/!:dscomer9/web20013.tab agif0041 $EMPRESA;$1" > "$DIREC"/dscomer9/wpediest.log 2> "$DIREC"/dscomer9/wpediest.err

#chmod 777 /u/cogewww/* 2>> "$DIREC"/dscomer9/wpediest.err
