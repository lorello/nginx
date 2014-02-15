FROM octohost/ubuntu:13.10

MAINTAINER Darron Froese "darron@froese.org"

RUN apt-get update
RUN apt-get -y install python-software-properties
RUN apt-get -y install nginx

RUN mkdir /srv/www
RUN echo "HTML is working" > /srv/www/nginx-container.html

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf