#!/opt/homebrew/bin/bash

case ${1,,} in
	anurag | eve)
	        echo "hello"
		;;
	help)
		echo "meow meow"
		;;
*) 
		echo "hello or meow meow"
esac
