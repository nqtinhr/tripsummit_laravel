# Stage 1: Build stage
FROM php:8.3-fpm-alpine AS build

# Install system dependencies and PHP extensions
# apk add: cài các package hệ thống cần cho Laravel (zip, image libraries để xử lý ảnh, Node.js để build asset).
# docker-php-ext-install: cài các PHP extension mà Laravel cần như pdo_mysql (kết nối MySQL), gd (xử lý ảnh), mbstring, bcmath...
RUN apk add --no-cache \
    zip \
    libzip-dev \
    freetype \
    libjpeg-turbo \
    libpng \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    nodejs \
    npm \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip pdo pdo_mysql \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-enable gd

# Install Composer
COPY --from=composer:2.7.6 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Copy necessary files and change permissions
COPY . .
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/storage \
    && chmod -R 775 /var/www/html/bootstrap/cache

# Install php and node.js dependencies
RUN composer install --no-dev --prefer-dist \
    && npm install \
    && npm run build

RUN chown -R www-data:www-data /var/www/html/vendor \
    && chmod -R 775 /var/www/html/vendor

# Stage 2: Production stage
FROM php:8.3-fpm-alpine

# install nginx
RUN apk add --no-cache \
    zip \
    libzip-dev \
    freetype \
    libjpeg-turbo \
    libpng \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    oniguruma-dev \
    gettext-dev \
    freetype-dev \
    nginx \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip pdo pdo_mysql \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-enable gd \
    && docker-php-ext-install bcmath \
    && docker-php-ext-enable bcmath \
    && docker-php-ext-install exif \
    && docker-php-ext-enable exif \
    && docker-php-ext-install gettext \
    && docker-php-ext-enable gettext \
    && docker-php-ext-install opcache \
    && docker-php-ext-enable opcache \
    && rm -rf /var/cache/apk/*

# copy files from the build stage
COPY --from=build /var/www/html /var/www/html
COPY conf/nginx.conf /etc/nginx/http.d/default.conf
COPY conf/php.ini "$PHP_INI_DIR/conf.d/app.ini"

WORKDIR /var/www/html

# add all folders where files are being stored that require persistence. if needed, otherwise remove this line.
VOLUME ["/var/www/html/storage/app"]
CMD ["sh", "-c", "nginx && php-fpm"]
#  docker build -t syshero/tripsummit-laravel:1.0.0 .
