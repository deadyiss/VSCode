CREATE DATABASE homestead;
CREATE USER 'homestead'@'%' IDENTIFIED WITH mysql_native_password BY 'secret';
GRANT ALL PRIVILEGES ON homestead.* TO 'homestead'@'%';
FLUSH PRIVILEGES;