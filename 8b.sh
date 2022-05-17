if [ $# -eq 1 ]
then
  
   file=`ls | grep -i "$1"`
n
          
           for i in $file
           do
           dir=/home/dhanu/mydir
           if [ -e $dir ]
           then
             ls $file
             cat $file
 
             cp  $file $dir
           else
              echo "Mydir is  not exits to do copy"
           fi
          
         done
       
  else
echo “please enter arguments”
fi
