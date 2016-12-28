# docker-gitbook

## Purpose

A gitbook docker image to allow you to build and publish your documentation.

**Commands available:**
* ```gitbook```
* ```npm```
* ```lftp```

## Usage

**To build your documentation in a specific directory:**
```
docker run -v /my_gitbook:/gitbook -v /my_html:/html amontaigu/gitbook gitbook build . /html
```

** To go inside the container an play with available commands in a shell:**
```
docker run -it --rm amontaigu/gitbook
```

## References and thanks

* https://www.gitbook.com/
* https://hub.docker.com/_/node/
* https://www.npmjs.com/package/gitbook
* https://www.npmjs.com/package/gitbook-cli
* https://github.com/Fellah/docker/blob/master/gitbook/Dockerfile
