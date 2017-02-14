FROM debian

MAINTAINER foospidy

RUN apt-get update; apt-get install -y apache2 php5 git vim

COPY composer.sh /tmp/composer.sh

RUN cd /tmp && ./composer.sh

WORKDIR /Php