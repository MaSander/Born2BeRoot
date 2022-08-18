sudo apt update
sudo apt upgrade

sudo apt install lighttpd

sudo ufw allow 80

sudo apt install mariadb-server

sudo mariadb
CREATE DATABASE cars;
GRANT ALL ON cars.* TO 'marcelo'@'localhost' IDENTIFIED BY '123' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
mariadb -u marcelo -p
exit

sudo apt install php-cgi php-mysql

sudo apt install wget
sudo wget http://wordpress.org/latest.tar.gz -P /var/www/html
sudo tar -xzvf /var/www/html/latest.tar.gz
sudo rm /var/www/html/latest.tar.gz
sudo cp -r ./wordpress/* /var/www/html
sudo rm -rf ./wordpress
# Configure database in /var/www/html/wp-config.php

sudo lighty-enable-mod fastcgi
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload

#wordpress senha: a1b2c3@42senha




sudo apt install libpam-google-authenticator
google-authenticator

sudo cp /etc/pam.d/sshd /etc/pam.d/sshd.bak

sudo vim /etc/pam.d/sshd
# ...
# #Standard Un*x password updating.
# @include common-password
# auth required pam_google_authenticator.so


sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

sudo vim /etc/ssh/sshd_config
# . . .
# # Change to yes to enable challenge-response passwords (beware issues with
# # some PAM modules and threads)
# ChallengeResponseAuthentication yes
# . . .

sudo systemctl restart sshd.service



