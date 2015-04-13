FROM ubuntu:latest
MAINTAINER jay.curran@gmail.com
USER root
RUN apt-get -qq update
RUN apt-get -qq -y install php5-common php5-cli php5-curl
RUN useradd -M -s /sbin/nologin dev 
RUN php -r "readfile('https://getcomposer.org/installer');" | php
RUN mv composer.phar /usr/local/bin/composer		    
