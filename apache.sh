#!/bin/bash


echo "Atualizar o servidor..."
apt get update
apt upgrade

echo "Servidor atualuzado."

echo "Instalando Apache..."
apt install apache2 -y

echo "Apache instalado."

echo "Instalando unzip..."
apt install unzip -y

echo "unzip instalado."

"Atualizando pagina do site apache"

cd /var/www/html/

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp /var/www/html/linux-site-dio-main/* /var/www/html/ -r


echo "Pagina apache criada"