#!/bin/sh

sudo yum update -y

sudo apt install apache2 -y

sudo systemctl start apache2

sudo systemctl enable apache2


sudo yum install -y https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm

sudo yum install -y mysql-community-client
