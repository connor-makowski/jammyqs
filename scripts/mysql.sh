echo "Installing MySQL Server"
wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
sudo apt-get update -y
sudo apt-get install mysql-server -y
sudo mysql_secure_installation
