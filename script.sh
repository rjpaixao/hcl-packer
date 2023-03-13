sleep 30
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nginx -y
systemctl enable nginx
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable