FROM debian:8

MAINTAINER foospidy

RUN apt-get update; apt-get install -y apache2 php5 php5-mysql php5-curl git vim wget mysql-client php5-ssh2

COPY composer.sh /tmp/composer.sh
RUN cd /tmp && ./composer.sh
RUN mv /tmp/composer.phar /usr/local/bin/composer && rm /tmp/composer.*

RUN a2enmod rewrite && \
    echo "ServerName foo" >> /etc/apache2/apache2.conf && \
    sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

EXPOSE 80
EXPOSE 3306

WORKDIR /Php
