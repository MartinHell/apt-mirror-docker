FROM ubuntu:18.04
MAINTAINER Martin Hellstrom <martin@hellstrom.it>

RUN \
  apt-get update && \
  apt-get install --no-install-recommends -y apt-mirror cron && \
  rm -rf /var/cache/apt/*

ENTRYPOINT ["cron", "-f"]
