FROM php:7.0-fpm-alpine

RUN apk add --no-cache \
    libpng libpng-dev libjpeg-turbo-dev freetype-dev \    
    libmcrypt-dev \
    libintl icu icu-dev libxml2-dev \
    libxslt-dev \
    && docker-php-ext-configure gd  \
        --with-jpeg-dir=/usr/include/ --with-freetype-dir=/usr/include

RUN docker-php-ext-install \
        gd \
        mcrypt \
        pdo_mysql \
        intl zip \
        bcmath \
        soap \
        xsl

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer

RUN apk add --update --no-cache su-exec

WORKDIR /src/www
