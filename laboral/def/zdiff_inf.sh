for INF in `ls *.inf`
do
	if [ -f /u/dsagitra/agilab/def/$INF ]
	then
		diff $INF /u/dsagitra/agilab/def/$INF > /dev/null
		if [ $? != 0 ]
		then
			echo $INF
		fi
	fi
done
