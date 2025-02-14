FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
WORKDIR /var/www/html
ADD . /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
