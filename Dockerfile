FROM php:8.4.5-apache

WORKDIR /var/www/html

COPY . .

EXPOSE 80
