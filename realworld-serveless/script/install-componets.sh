cd ~/environment/Real-Word-PHP/realworld-exampl

#install php composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer

#install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#install serverless Framework
npm install -g serverless