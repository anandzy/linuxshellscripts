#/bin/bash

#Script under developemnt

#This scripts helps to add, commit and push the code in single click to git repo.
rm -rf .git/

git config --global user.name "anandzy"

git config --global user.email "anandbhupathiraju@icloud.com"

sudo git remote add origin https://github.com/anandzy/linuxshellscripts.git

git add *

git commit -m "hjjjhgjg"

git push orgin master

if [ $? -eq 0 ]; then
	echo The git-push was successfull..
else
	echo error!!
fi
