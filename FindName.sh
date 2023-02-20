#!/bin/bash

echo "Please type the name you want: "
read INPUT
for NAME in $(cat names.txt); do #make sure to specify the path of the file
	if [ $NAME = $INPUT ]
	then
		echo "The name $INPUT is exist!"
		exit #exit the program
	fi
done
echo "We cannot find The $INPUT in the file!"
