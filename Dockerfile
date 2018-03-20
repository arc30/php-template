FROM php:7.0-apache
COPY src/ /var/www/html/

ADD database/db.sql /root/
ADD final-php.sh /usr/sbin/final-php

RUN docker-php-ext-install mysqli
RUN apt-get update; apt-get -y  install mysql-client

ENV PORT ${PORT:-8080}
ENV CLEARDB_DATABASE_URL ${CLEARDB_DATABASE_URL:-"mysql://testuser:testpass@localhost/testdb?reconnect=true"}

CMD final-php
