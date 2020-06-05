:

# PRODUCTOS EN PEDIDOS ANTERIORES

DIREC=/u/dsl
EMPRESA=`cat "$DIREC"/dscomer9/wempresa.txt`

"$DIREC"/bin/serverds @"$DIREC" "/!:dscomer9/web20012.tab agif0041 $EMPRESA;$1" > "$DIREC"/dscomer9/wpediant.log 2> "$DIREC"/dscomer9/wpediant.err

#chmod 777 /u/cogewww/* 2>> "$DIREC"/dscomer9/wpediant.err
