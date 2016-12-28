# docker-gitbook

## Purpose

A gitbook docker image to allow you to build and publish your documentation.

## Usage

```
docker run -v /my_gitbook:/gitbook -v /my_html:/html amontaigu/gitbook gitbook build . /html
```

## References and thanks

* https://www.gitbook.com/
* https://hub.docker.com/_/node/
* https://www.npmjs.com/package/gitbook
* https://www.npmjs.com/package/gitbook-cli
* https://github.com/Fellah/docker/blob/master/gitbook/Dockerfile
