FROM php:7.0-fpm-alpine

RUN apk add --no-cache \
    libpng libpng-dev libjpeg-turbo-dev freetype-dev \    
    && docker-php-ext-configure gd  \
        --with-jpeg-dir=/usr/include/ --with-freetype-dir=/usr/include \
    && docker-php-ext-install \
        gd 

RUN apk add --no-cache \
    libmcrypt-dev \
    && docker-php-ext-install \
        mcrypt \
        pdo_mysql 

RUN apk add --update --no-cache \
    libintl icu icu-dev libxml2-dev \
    && docker-php-ext-install \
        intl zip 

RUN apk add --update --no-cache \
    libxslt-dev \
    && docker-php-ext-install \
        xsl

RUN apk add --update --no-cache \
    && docker-php-ext-install \
        bcmath \
        soap


RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer
  

WORKDIR /src/www
