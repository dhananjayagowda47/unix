if [ $# -eq 1 ]
then
grep $1 /etc/passwd >file
if [ $? -eq 0 ]
then
echo "user exist"
h=`cut -d ":" -f 6 file`
echo "Home directory of $1 is $h"
else
echo " User not found"
fi
else
echo " enter the user name"
fi

