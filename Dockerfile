FROM httpd:2.4.33-alpine
MAINTAINER Martin Hellstrom <martin@hellstrom.it>

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
