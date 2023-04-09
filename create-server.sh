#!/bin/bash

echo "Hello World!"
echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

chmod 777 /publico
chmod 770 /adm
chgrp GRP_ADM /adm 
chmod 770 /ven
chgrp GRP_VEN /ven 
chmod 770 /sec
chgrp GRP_SEC /sec 

echo "Wip..."
