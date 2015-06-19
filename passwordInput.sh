echo "please input password>>"
stty -echo
read password < /dev/tty
printf "please input again:"
read password2 < /dev/tty
stty echo
#if $password!==password2 then
	echo $password
#fi
