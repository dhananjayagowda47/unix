count=0;
var=$1
if [ $# -gt 1 ]
then
	for i in $*
	do
		if [ -f $i ]
		then  
			count=`expr $count + 1`
			if [ $count -gt 1 ]
			then
				set -- `cat $var`
				for r in $*
				do
					echo word $r is `grep -owi $r $i | wc -l` occurences  in $i
				done
			fi
		else
			echo "Enter the valid file names"
		fi
	done
else
	echo "Provide Valid Arguments"
fi
