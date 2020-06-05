lpstat -W completed -o | grep $1
if [ $? == 0 ]; then
  echo "CORRECTO" > /tmp/$1.verif
else
  echo "PENDIENTE" > /tmp/$1.verif
fi

