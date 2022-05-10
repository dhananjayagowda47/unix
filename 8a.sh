u=`$1`
lh=`who | grep "$1" | tr -s " " | cut -d " " -f 4 | cut -c 1-2`
lm=`who | grep "$1" | tr -s " " | cut -d " " -f 4 | cut -c 4-5`
h=`date +%H`
m=`date +%M`
if [ $h -le $lh ]
then
	wh=`expr $lh - $h`
	else
	wh=`expr $h - $lh`
fi
wm=`expr $m + $lm`
if [ $wm -ge 60 ]
then
  wh=`expr $wh + 1`
  wm=`expr $wm - 60`
fi

echo "$u work from last $wh hour $wm minutes"
 
