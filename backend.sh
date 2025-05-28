#!/bin/bash
sudo apt update -y 

sudo apt install apache2 -y

echo 'Hello from backend' | sudo tee /var/www/html/index.html > /dev/null

sudo systemctl start apache2

sudo systemctl enable apache2

sudo apt install mysql-client-core-8.0 