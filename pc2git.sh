#/bin/bash

#This scripts helps to add, commit and push the code in single click to git repo.

git add $1

git commit -m "$2" 

git push orgin master

if [ $? -eq 0 ]; then
	echo The git-push was successfull..
else
	echo error!!
fi
