#!/bin/sh
# Date: 28.05.2012
# Author: sadican
# Content: Github setup

echo ">>> Starting..."

echo ">>> Installing git..."
sudo apt-get install -y git-core git-gui git-doc
echo ">>> Git was installed..."

echo ">>> Please give me your e-mail address..."
read email
echo ">>> Generating SSH key..."
echo ">>> Please write down the name of file with the path to that directory..."
ssh-keygen -t rsa -C "$email"

echo ">>> Now, go to your specified directory and open SSH key file,"
echo ">>> Copy everyting inside and paste to SSH Keys part of your github account..."
echo ">>> When you done that press any key to continue..."
read -t 5000

echo ">>> Lets check if everything is OK..."
ssh -T git@github.com

echo ">>> Please give your name & surname..."
read name_and_surname

git config --global user.name "$name_and_surname"
git config --global user.email "$email"

echo ">>> THE END"
exit 0
