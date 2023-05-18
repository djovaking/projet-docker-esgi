FROM php:7.4-apache

RUN docker-php-ext-install pdo pdo_pgsql

COPY src/ /var/www/html/
