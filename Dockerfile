FROM debian

MAINTAINER foospidy

RUN apt-get update; apt-get install -y apache2 php5 php5-mysql php5-curl git vim wget mysql-client

COPY composer.sh /tmp/composer.sh
RUN cd /tmp && ./composer.sh
RUN mv /tmp/composer.phar /usr/local/bin/composer && rm /tmp/composer.*

RUN a2enmod rewrite

EXPOSE 80

WORKDIR /Php