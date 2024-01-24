FROM php:7.4-fpm
RUN apt update
RUN apt install -y curl git libzip-dev libpng-dev unzip
RUN docker-php-ext-install -j$(nproc) pdo_mysql zip fileinfo bcmath opcache 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer  
RUN pecl install redis && \
    docker-php-ext-enable redis