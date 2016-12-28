# docker-gitbook

## Purpose

A gitbook docker image to allow you to build and publish your documentation.

**Available commands:**
* ```gitbook```
* ```npm```
* ```lftp```
* ```git```

## Usage

**To build your documentation in a specific directory:**
```
docker run -v /my_gitbook:/gitbook amontaigu/gitbook gitbook build docs html
```

**To go inside the container an play with available commands in a shell:**
```
docker run -it --rm --entrypoint=/bin/sh amontaigu/gitbook
```

## References and thanks

* https://www.gitbook.com/
* https://hub.docker.com/_/node/
* https://www.npmjs.com/package/gitbook
* https://www.npmjs.com/package/gitbook-cli
* https://github.com/Fellah/docker/blob/master/gitbook/Dockerfile
* https://toolchain.gitbook.com/syntax/asciidoc.html
* http://asciidoctor.org/docs/asciidoc-syntax-quick-reference/
* https://youtu.be/1rKgVF5CEEY
