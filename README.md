<img src="./.files/mau-mau.png" width="64" height="64" title="Ouçam minha gargalhada fatal - hihihahaha"/>

Passo 1
Na raiz do projeto 

Passo 2
sudo docker-compose up (esperar baixar todas os containers do docker)

Passo 3
Executar o setup-work.sh sudo ./setup-work.sh (ele irá baixar às dependecias do Magento 2),
nessa parte será necessário as credenciais do magento , no site do magento https://marketplace.magento.com/customer/accessKeys/. Após a instalação ele fará um mount na pasta src/ onde estará todos os arquivos do Magento 2

Passo 4
 criar sua rota nos hosts sudo nano /etc/hosts (mudar o MAGE_SETUP_BASE_URL=http://it.mage-two/ ,no arquivo .env)

Passo 5

Dar permissões nas seguintes pastas 
sudo chmod -R 777 var/ generated/ pub/media 
e no arquivo 
chmod 755 auth.json
(se estiver dentro do container do docker não é necessário os comandos com sudo)

Passo 6

Acessar o percona, que no caso e o phpmyadmin, (localhost:8888), entrar no banco e na tabela 
core_config_data e alterar http://it.mage-two/ para o seu host criado (não esquecer da barra no final)

