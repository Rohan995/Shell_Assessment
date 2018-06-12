#!/bin/bash
mkdir Rohan
mv Problem1.sh Rohan
cd Rohan
sudo yum update
sudo yum install git
git init
git add *
git commit -m "first commit"
git remote add origin git@github.com/Rohan995/Shell_Asessment.git
git push -u origin master
