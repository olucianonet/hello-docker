### Criando um dockerfile

- Defina em um arquivo, exemplo `Dockerfile`.

```
FROM debian
RUN /bin/echo "HELLO DOCKER"
```
- Execute o seguinte comando no local do arquivo:

```
# docker build .
```

- Demais opções:

  - ADD, CMD, LABEL, COPY, ENTRYPOINT, ENV, EXPOSE, FROM, MAINTAINER, RUN, USER, VOLUME, WORKDIR.
