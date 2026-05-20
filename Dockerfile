FROM ubuntu:latest

RUN apt-get update && \
    apt-get install apache2 -y

COPY index.html /var/www/html/index.html

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
