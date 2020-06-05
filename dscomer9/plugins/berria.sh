:


mkdir /tmp/prueba/


#"Directorio logos tipos de componentes"
for f in $1*
do
	echo $f >> /tmp/prueba
done

#"Directorio logos caracteristicas tecnicas"
for f in $2*
do
	echo $f >> /tmp/prueba
done

#"Directorio txt"
for f in $3*
do
	echo $f >> /tmp/prueba
done


