# ==================================================================================================
#
# Docker gitbook helper image
#
# Provide gitbook commands in a docker image to build and deploy your docs
#
# ==================================================================================================

# Base image, small node image on the top of alpine
FROM node:7.3.0-alpine

# Maintainer
MAINTAINER Alban Montaigu <https://github.com/AlbanMontaigu>

# Environment configuration
ENV GITBOOK_VERSION="3.2.2"

# Install gitbook and lftp
RUN npm install --global gitbook-cli \
	&& gitbook fetch ${GITBOOK_VERSION} \
	&& npm cache clear \
	&& apk update \
	&& apk add lftp git \
	&& rm -rf /tmp/*

# Current directory configuration
WORKDIR /gitbook

# Volume for generated data if any
VOLUME /gitbook /html

# Ports for serve command
EXPOSE 4000 35729

# Entrypoint is shell and default command is gitbook version list
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/local/bin/gitbook ls"]
