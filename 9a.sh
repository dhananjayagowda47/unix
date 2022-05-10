 if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		line=`wc -l $1 | cut -d " " -f 1`
		if [ $2 -le $line -a $3 -le $line -a $2 -le $3 -a $2 -gt 0 -a $3 -gt 0 ]
		then
			head -n $3 $1 | tail -n +$2
		else
			echo "Enter the valid starting and ending point"
		fi
	else
		echo "Provide valid file name"
	fi
else
	echo  "Enter the reqired arguyments\nUsage:FileName StartingPoint EndPoint "
fi
