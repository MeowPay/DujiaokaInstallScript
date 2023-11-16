FROM php:7.4-fpm
RUN apt update;apt install -y curl git libzip-dev libpng-dev unzip; \
    docker-php-ext-install -j$(nproc) pdo_mysql zip fileinfo bcmath && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer  && \
    pecl install redis && \
    docker-php-ext-enable redis
