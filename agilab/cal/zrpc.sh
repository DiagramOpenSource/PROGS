:

if [ $* ]
then
	LISTA=$*
else
	LISTA=`ls *.cal`
fi

for CAL in $LISTA
do
	SINCAL=`echo $CAL | sed s/".cal"//`
	rpcdiff /u/dsasesor/agilab /u/dsprofes/laboral $SINCAL
done
