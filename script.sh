#!/bin/bash

echo Criando grupos

echo Criando grupo de Administração
groupadd GRP_ADM

echo Criando grupo de Vendas
groupadd GRP_VEN

echo Criando grupo de Segurança
groupadd GRP_SEC

echo Criação de grupo finalizada!

#

echo Iniciando criação dos usuários de Administração


echo Criando user Carlos
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_ADM
passwd carlos -e

echo Criando user Debora
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_ADM
passwd debora -e

echo Criando user Amanda
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_ADM
passwd amanda -e

#

echo Iniciando criação dos usuários de Vendas


echo Criando user Maria
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_VEN
passwd maria -e

echo Criando user Flavio
useradd flavio -c "Flavio " -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_VEN
passwd flavio -e

echo Criando user Rogerio
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_VEN
passwd rogerio -e

#

echo Iniciando criação dos usuários de Segurança


echo Criando user Joao
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_SEC
passwd joao -e

echo Criando user Roberto
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_SEC
passwd roberto -e

echo Criando user Lucas
useradd lucas -c "Lucas" -s /bin/bash -m -p $(openssl passwd -6 123456AA) -G GRP_SEC
passwd lucas -e

echo Usuários criados com sucesso!

#

echo Criando diretório de pastas

echo Criando diretório publico
mkdir /home/publico

echo Criando diretório adm
mkdir /home/adm

echo Criando diretório ven
mkdir /home/ven

echo Criando diretório sec
mkdir /home/sec


echo Diretórios criados!

#Definindo dono do diretório

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

#

echo Definindo permissões nos diretórios


chmod 777 /home/publico
chmod 770 /home/ven
chmod 770 /home/adm
chmod 770 /home/sec

echo Permissões definidas.

echo Fim do Script!
