#!/bin/bash
cd $PWD/$2
folder="$1"
mkdir $folder
cd $folder
letter=${folder:0:1}
folder=${folder/$letter/${letter^^}}
ind=`expr index "$folder" -`
while [ "$ind" -gt 0 ] 
do
	letter=${folder:$ind:1}
	folder=${folder/-[a-z]/${letter^^}}
	ind=`expr index "$folder" -`
done
touch $folder.js
touch $folder.css
touch $folder.test.js
touch $folder.types.js
