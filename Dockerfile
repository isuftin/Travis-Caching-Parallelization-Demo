FROM httpd:2.4

RUN apt update && apt-get upgrade -y && apt-get install wget -y

ARG size

COPY ${size}.bin /usr/local/apache2/htdocs/${size}.bin
