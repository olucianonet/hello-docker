### Volumes

- Adicionando um volume ao container

```
~# docker run -ti -v /volume ubuntu /bin/bash
```

- Montando um volume a partir de um diretório existente

```
~# cd ~/; mkdir volumes/
~# docker run -ti /root/volumes:/volume ubuntu
```

- Definindo o volume apenas leitura

```
~# docker run -ti /root/volumes:/volume:ro ubuntu
```

- Definindo o volume a partir de um arquivo

```
~# touch meu_arquivo
~# echo "Hello World!" >> meu_arquivo
~# docker run -ti -v /root/meu_arquivo:/meu_arquivo ubuntu
/# cat /meu_arquivo
Hello World!
/#
```

- Verificando o local de um volumes

```
# docker inspect -f {{.Mounts}} [container_id]
```

- Criar um container apenas para armazenar dados

```
# docker create -v /data --name data_container debian
```

- Montar um volume de outro container_id

```
# docker run -ti --name my_server --volumes-from data_container ubuntu
```

- Backup de um volumes

```
# docker run -ti --volumes-from data_container -v $(pwd):/backup debian \
tar cvf /backup/backup_data.tar /data
```

_Esse comando cria um container exclusivamente para executar backup. Toda vez que ele for executar, um novo backup será realizado._
