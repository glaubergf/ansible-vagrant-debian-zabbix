#!/bin/bash

#--- Mudar a senha do usuário Vagrant.
#echo 'vagrant:zaq1' | sudo chpasswd

# --- Atualizar e instalar pacotes no sistema.
apt update
apt install -y tree neofetch python3-pymysql python-apt ssh