
### Especificando a quantidade de memória

**Durante a criação do container**

```
# docker run -ti -m 512M --name meu_container ubuntu
```

**Após a criação do container**

```
# docker update -m 256M meu_container
```

### Especificando a quantidade de CPU

**Durante a criação do container**

```
# docker update --cpu-shares 512 meu_container
```

**_Para verificar se as alterações foram aplicadas, utilize:_**

```
# docker inspect dock_ubuntu | grep -i mem; \
> docker inspect dock_ubuntu | grep -i cpu;
```
