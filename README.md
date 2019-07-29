
### Saindo do container

```console
exit
```
- CTRL + p + q, para manter o container em operação.

### Voltar ao container

```
# docker attach <container_id>
```

### Subir um container_id

```
# docker start [container_id]
```

### [des]Pausar um container_id

```
# docker pause [container_id]
```

### Para um container_id

```
# docker stop [container_id]
```

### Verificando o estado de execução do container_id

```
# docker ps
```

Serão listados somente os containers em execução.

### Visualizando o status de consumo do container:

**CPD, memória e rede**

```
# docker stats [container_id]
```

**Processos**

```
# docker top [container_id]
```

**Logs**

```
# docker logs [container_id]
```

### Removendo um container

```
# docker rm [--f][container_id]
```
