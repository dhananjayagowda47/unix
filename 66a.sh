if [ $# -eq 0 ]
then
echo “No arguments”
exit
fi
for i in $*
do
echo grep –riew $* /home/mca
ls $*
cat $*
cp –f $* /home/mca/mydir
done
