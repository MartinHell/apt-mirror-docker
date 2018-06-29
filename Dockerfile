FROM ubuntu:18.04
MAINTAINER Martin Hellstrom <martin@hellstrom.it>

RUN \
  apt-get update && \
  apt-get install --no-install-recommends -y apt-mirror apache2 gnupg2 && \
  rm -rf /var/cache/apt/*

EXPOSE 80
#COPY setup.sh /setup.sh
#RUN setup.sh

ENTRYPOINT ["apachectl", "-DFOREGROUND"]
