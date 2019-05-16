#!/bin/sh

#checking the number of arguments
if [[ $# -ne 1 ]]
then
 echo "enter one arguement"
 exit
fi
#ckeching whether the argument given is a directory
while [[ ! -d $1 ]] 
do
 echo "enter valid directory"
 exit
done
#ls for listing files wc for counting
echo "Total no of files =$(ls $1|wc -l)"
echo "List of extensions present =$(ls $1|awk -F '.' '{print $2}')"

#grep used for finding a string in a line
echo "No of pdf files=$(ls $1|grep '.pdf'|wc -l)"
echo "No of gif files=$(ls $1|grep '.gif'|wc -l)"
echo "No of png files=$(ls $1|grep '.png'|wc -l)"
