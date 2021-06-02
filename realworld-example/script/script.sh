cd ~/environment/Real-Word-PHP/realworld-example

composer install
cp .env.example.docker .env

docker-compose up -d

#retorna as imagens que estão em execução (copiar o nome da imagem mysql)
docker ps

#entra no terminal da imagem docker selecionada
docker exec -it IMAGE_NAME bash
mysql -uroot -proot #executa o mysql com usuário root

#no terminado "mysql" executar o comando abaixo
UPDATE mysql.user SET authentication_string='$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED' where user='user'; flush privileges; ALTER USER user IDENTIFIED WITH mysql_native_password BY 'password';

#isso liberará o comando migrate para funcionar corretamente

#executar em ~/environment/Real-Word-PHP/realworld-exampl
docker-compose exec php php artisan migrate

#(opcional) caso seja a primeira execução e queira carregar dados dummy
docker-compose exec php php artisan db:seed

#executar a API em: http://localhost:8000/api