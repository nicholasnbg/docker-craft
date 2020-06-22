FROM php:fpm

WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install -y libzip-dev libpng-dev zlib1g-dev

RUN docker-php-ext-install pdo pdo_mysql gd zip