#!/bin/bash

user=$(whoami)

path=$HOME/txt/log-book.txt #you can change the path to your desired directory

echo $(date) | cat>>$path

echo "Welcome! $user..."

echo "Type in your logs for $(date)"

cat>>$path;

printf "\n";

echo "Response recorded"

printf "\n";

read -p "Do you want to see your recent log entries? (Y/N) " choice

if [ $choice = 'Y' ]; then

	tail $path
	echo "--Exit--"

else 
	echo "Exiting..."
fi
exit 0
