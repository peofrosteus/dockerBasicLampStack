FROM php:7.4-apache

RUN apt-get update
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

WORKDIR /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]