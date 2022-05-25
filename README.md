# Dockerfile para criação de ambiente jupyter notebook no docker


## Criando imagem docker

```console
foo@bar:~$ sudo docker build --tag=desenvolvimento:python .
```

## Criando container
```console
foo@bar:~$ sudo docker create -t -i --name python-dev -p 4000:4000 -v /home/user/docker/jupyter_workspace:/home/user desenvolvimento:python
```

## Iniciando Container
```console
foo@bar:~$ sudo docker start python-dev
```

## Entrando no terminal do container
```console
foo@bar:~$ sudo docker exec -it python-dev bash
```

## Inicialização do jupyter notebook
```console
foo@bar:~$ jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root
```

