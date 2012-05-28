#!/bin/sh
# Date: 28.05.2012
# Author: sadican
# Content: Github repository creation code

echo ">>> Starting..."

echo ">>> Repository folder will be created in /home/user-name/Tools/..."
echo ">>> Please give me repository folder name..."
read repo_directory
mkdir -p $HOME/Tools/$repo_directory
echo ">>> Directory created..."
cd $HOME/Tools/$repo_directory
echo ">>> Init git..."
git init
echo ">>> Create README file..."
touch README

echo ">>> Enter repository name on github..."
read repo_name
echo ">>> Enter your name on github..."
read user_name

echo ">>> Add README file to repo..."
git add README
git commit -m "first commit"
git remote add origin git@github.com:$user_name/$repo_name.git
git push -u origin master

echo ">>> THE END"
exit 0
