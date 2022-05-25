#Sistema Operacional
FROM ubuntu:22.04

#Dependências do sistema
RUN apt-get update -y
RUN apt-get install -y python3-dev python3-pip build-essential

#Pacotes do Python
COPY requirements.txt /requirements.txt 
RUN pip3 install --upgrade pip 

#Atualização do gerenciador de pacotes
RUN pip3 install -r requirements.txt  

#Instalação dos pacotes listados
RUN pip3 install jupyter 

#Instalação do pacote jupyter notebook
#Diretório do usuário docker
RUN mkdir -p /home/user
WORKDIR /home/user


#Build image
# $ sudo docker build --tag=desenvolvimento:python . 

#Create container
#  $ sudo docker create -t -i --name python-dev -p 4000:4000 -v /home/sostenes/docker/jupyter_workspace:/home/user desenvolvimento:python

#Start Container
# $ sudo docker start python-dev

#Entrando no terminal do container
# $ sudo docker exec -it python-dev bash

#Inicialização do jupyter notebook
# $ jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root