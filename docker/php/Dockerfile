FROM php:8.2-fpm

WORKDIR /var/www/html

# Установка необходимых расширений
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    git \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip pdo pdo_mysql

# Копирование php.ini
COPY ../../docker/php/php.ini /usr/local/etc/php/php.ini

# Установка Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Копирование кода приложения
COPY . /var/www/html

# Установка зависимостей
RUN composer install --no-interaction --optimize-autoloader
