#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
#sudo touch /var/www/html/home.html 
#echo 'WEBSITE Hosted!!' | sudo tee /var/www/html/home.html
sudo systemctl start apache2
sudo systemctl enable apache2
