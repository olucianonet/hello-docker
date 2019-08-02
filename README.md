### Criando e Gerenciando Imagens

- Criando um dockerfile

```
~# mkdir dock_images; touch Dockerfile; nano Dockerfile
```

- Adicione no arquivo o conteúdo a seguir:

```
FROM debian

RUN apt-get update && apt-get install -y apache2 && apt-get clean
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL description="Webserver"

VOLUME /var/www/html/

EXPOSE 80

```

_Esse arquivo é responsável por criar uma imagem com o servidor Apache._

- Para construir a imagem execute:

```
# docker build -t snake/apache:1.0 .
```

- Verificando imagens criadas

```
# docker images
```

- Para executar a imagem:

```
# docker run -ti snake/apache:1.0
```

- Para sair do container:

> CTRL + p + q

- Criando uma versão personalizada de um container existente

> Entre no container, instale os pacotes desejados e saia. Após, execute o comando a seguir:

```
# docker commit -m 'mensagem' [container_id]
```

- Definindo uma tag e uma versão para o container

```
# docker run -ti snake/apache2:1.0 /bin/bash
```

- Tem muitas imagens, quer deletar todas?

**Atenção: Cuidado com esse comando!**

```
# for c in `docker ps -a | awk '{print $1}' | grep '[a-z|0-9]'`; \
> do docker rm -f $c; done; \
> for n in `docker images | awk '{print $3}'| grep '[a-z|0-9]'`; \
> do docker rmi -f $n; done;
```

_O primeiro for deleta todos os contêineres e o segundo todas as imagens._
