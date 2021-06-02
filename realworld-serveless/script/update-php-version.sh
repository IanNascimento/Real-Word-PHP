sudo amazon-linux-extras | grep php #verificar pacotes existentes no amazon-linux

#desabilitar todas as instancias do php
sudo amazon-linux-extras disable php7.2
sudo amazon-linux-extras disable lamp-mariadb10.2-php7.2

sudo amazon-linux-extras enable php7.3 #habilitar php7.3

sudo yum install php-cli php-pdo php-fpm php-json php-mysqlnd
sudo yum update -y