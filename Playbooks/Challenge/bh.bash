sudo systemctl stop mysql
sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo rm -rf /etc/mysql /var/lib/mysql
sudo apt-get autoremove
sudo apt-get autoclean

sudo apt install mysql-server
sudo mysql
CREATE DATABASE beyond;
DROP USER root@localhost;
DROP USER 'root'@'%';
CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
CREATE USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
GRANT ALL PRIVILEGES ON beyond.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON beyond.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
exit

mkdir challenge-1
cd challenge-1
nano laravel.yaml (hapus semua text yang ada didalam file lalu ISI SESUAI FILE DIBAWAH)