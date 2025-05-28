#!/bin/bash
sudo apt update -y 

sudo apt install apache2 -y

echo 'Hello from frontend' | sudo tee /var/www/html/index.html > /dev/null

sudo systemctl start apache2

sudo systemctl enable apache2
