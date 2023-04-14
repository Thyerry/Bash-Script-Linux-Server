#!/bin/bash

echo "atualizando os pacotes do servidor...."

apt update
apt upgrade -y

echo "instalando o apache2......"

apt install apache2 -y

echo "instalando o unzip......"

apt install unzip -y

echo "baixando a aplicação web....."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "processo finalizado"

