FROM php:7.2-apache
MAINTAINER aprice42

VOLUME /var/www/html

RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev libxml2-dev \
    && apt-get install -y mysql-client \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mbstring pdo_mysql pdo_pgsql zip \
    && docker-php-ext-install opcache bcmath soap \
    && pecl install redis-3.1.1 \
    && docker-php-ext-enable redis \
    && a2enmod rewrite \
    && rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug-2.6.0beta1 \
    && docker-php-ext-enable xdebug

COPY php.drupal.ini /usr/local/etc/php/conf.d/
