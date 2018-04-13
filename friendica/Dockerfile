FROM php:7.2-apache-stretch

LABEL maintainer="Angristan https://github.com/Angristan/dockerfiles"

ARG FRIENDICA_VER=3.6

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
    wget \
    libpng-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libmagickwand-dev \
    && rm -rf /var/lib/apt/lists/* \
    && NPROC=$(getconf _NPROCESSORS_ONLN) \
    && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j${NPROC} \
    mysqli \
    pdo \
    pdo_mysql \
    gd \
    opcache \
    curl \
    xml \
    mbstring \
    zip \
    && pecl install imagick \
    &&  docker-php-ext-enable imagick \
    && echo "expose_php = off" > /usr/local/etc/php/conf.d/custom.ini \
    && a2enmod rewrite \
    && cd /var/www/html \
    && wget -qO- https://github.com/friendica/friendica/archive/${FRIENDICA_VER}.tar.gz | tar xz --strip 1 \
    && util/composer.phar install \
    && mkdir plugins \
    && cd plugins \
    && wget -qO- https://github.com/friendica/friendica-addons/archive/${FRIENDICA_VER}.tar.gz | tar xz --strip 1 \
    && chown -R www-data:www-data /var/www/html \
    && rm -rf /tmp/*
