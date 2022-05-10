echo "Enter the password:"
stty -echo
read pass
stty -echo
echo "Confirm the password:"
stty -echo
read pass2
stty -echo
while [ "$pass" != "$pass2" ]
do
echo "Password doesnot match .\n Reenter the password:"
stty -echo
read pass2
stty -echo
done
clear
echo "Terminal locked"
echo "Enter the password to unlock:"
stty -echo
read pass3
stty -echo
while [ "$pass" != "$pass3" ]
do 
clear
echo "Terminal locked"
echo "Password doesnot match .\n Reenter the password:"
stty -echo
read pass3
stty -echo
done
echo "----------Terminal Unlocked----------"

