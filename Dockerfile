FROM composer:2.0.8

RUN apk add --no-cache --virtual .runtime-deps \
    icu-dev

RUN docker-php-ext-install calendar && \
    docker-php-ext-configure calendar && \
    docker-php-ext-install intl && \
    docker-php-ext-configure intl
