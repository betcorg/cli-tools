#!/bin/bash

echo "Enter port number"
read PORT
echo "Open browser? [Y/n]"
read BWSR

if [ "$BWSR" = "y" ] || [ "$BWSR" = "Y" ] || [ "$BWSR" = "" ]; 
then
	echo -e "\e[32m[*] Opening browser in localhost port \e[0m"$PORT
	sleep 3
	php -S 127.0.0.1:$PORT &
	open -a "Google Chrome" http://127.0.0.1:$PORT
else
	echo -e "\e[32m[*] Opening localhost port \e[0m"$PORT
	sleep 3
	php -S 127.0.0.1:$PORT
fi
