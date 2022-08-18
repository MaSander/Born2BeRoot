addgroup user42

addgroup msander user42

hostnamectl set-hostname "new-hostname" --pretty

apt install sudo

sudo usermod -Ag sudo

# Configure password 
sudo vim /etc/login.defs

sudo apt instal libpam-pwquality
sudo vim etc/pam.d/common-password

# FireWall
sudo apt install ufw
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 4242
sudo ufw delete 1 # delete rule 22 port
sudo ufw delete 2 # delete rule (v6) 22 port


# Crontab
sudo /etc/init.d/cron start

sudo systemctl start cron
sudo systemctl stop cron
