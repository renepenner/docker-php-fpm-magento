FROM php:5.5-fpm


RUN apt-get update && \
    apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure \
    gd --with-png-dir=/usr --with-jpeg-dir=/usr 

RUN docker-php-ext-install \
    gd \
    mbstring \
    mcrypt \
    mysqli \
    pdo_mysql \


