FROM composer:latest

RUN docker-php-ext-install calendar && docker-php-ext-configure calendar
