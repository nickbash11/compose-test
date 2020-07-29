FROM debian:buster-slim

ENV TZ=Europe/Moscow

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y 
RUN apt-get install -y php libapache2-mod-php
RUN a2enmod php7.3
RUN a2enmod remoteip
COPY ./remoteip.conf /etc/apache2/conf-available/remoteip.conf
RUN a2enconf remoteip
COPY ./apache2.conf /etc/apache2/apache2.conf
COPY ./dir.conf /etc/apache2/mods-available/dir.conf

CMD apachectl -D FOREGROUND
