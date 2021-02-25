#!/bin/bash
#bloco de instalação de requisitos para o ambiente
apt update
apt install python3 -y
apt install python3-pip -y
apt install git -y
apt update

# Interrompe a aplicaçao caso esteja em uso
pkill -9 -f gunicorn

#Criando diretorio / Download do app
mkdir app
cd app
git clone https://github.com/gohackfelipe/desafio.git
cd desafio
cd app

#Instala requisitos do app
pip3 install -r ./requirements.txt

# Start da app em modo não interativo
gunicorn --log-level debug api:app --daemon