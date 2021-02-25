#!/bin/bash
#bloco de instalação de requisitos para o ambiente
apt update
apt install python3 -y
apt install python3-pip -y
apt install git -y
apt update

#Criador diretorio e feito download do app
mkdir app
cd app
git clone https://github.com/gohackfelipe/desafio.git
cd desafio
cd app