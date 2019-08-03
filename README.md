### Compartilhando as imagens

- Inspecionando uma imagem

```
# docker inspect IMAGE
```

- Fatiando as camadas de um imagem

```
# docker history IMAGE
```

- Compartilhando uma imagem no [hub do Docker](https://hub.docker.com)

```
# docker push NAME:[TAG]
```

- Pesquisando por imagens no hub

```
# docker search TERM
```

- Baixando uma imagem do hub

```
# docker pull NAME[:TAG]
```

- Criando um hub local, utilizando o registry do Docker como container

```
# docker run -d -p 5000:5000 --restart=always --name registry registry:2
```

- Definindo uma uma tag para subir uma imagem para o registry local

```
# docker tag IMAGEID localhost:5000/apache
```

- Enviando uma imagem para o registry localhost

```
docker push localhost:5000/apache
```
