#!/bin/bash -x

yum update -y
yum install python3 -y
yum install pip
pip intall flask

FOLDER="https://raw.githubusercontent.com/zakus2023/my-repository/main/001-roman-numerals-converter"

cd /home/ec2-user 

wget ${FOLDER}/app.py

mkdir templates
cd templates
wget ${FOLDER}/templates/index.html
wget ${FOLDER}/templates/result.html
cd ..
python3 app.py
