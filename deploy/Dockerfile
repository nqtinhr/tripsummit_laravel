# Stage 1: Build stage
FROM php:8.3-fpm-alpine AS build

# Install system dependencies and PHP extensions
# apk add: cài các package hệ thống cần cho Laravel (zip, image libraries để xử lý ảnh, Node.js để build asset).
# docker-php-ext-install: cài các PHP extension mà Laravel cần như pdo_mysql (kết nối MySQL), gd (xử lý ảnh), mbstring, bcmath...
RUN apk add --no-cache \
    zip libzip-dev \
    freetype libjpeg-turbo libpng \
    freetype-dev libjpeg-turbo-dev libpng-dev \
    oniguruma-dev gettext-dev \
    nodejs npm \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip pdo pdo_mysql \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mbstring exif bcmath gettext \
    && docker-php-ext-enable gd bcmath exif gettext

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

# Install runtime dependencies & Nginx
RUN apk add --no-cache nginx bash \
    zip libzip freetype libjpeg-turbo libpng \
    && rm -rf /var/cache/apk/*

WORKDIR /var/www/html

# Copy PHP extensions from build stage
COPY --from=build /usr/local/lib/php/extensions/ /usr/local/lib/php/extensions/
COPY --from=build /usr/local/etc/php/conf.d /usr/local/etc/php/conf.d

# Copy built application from build stage
COPY --from=build /var/www/html /var/www/html

# Copy Nginx and PHP custom configs
COPY deploy/php.ini /usr/local/etc/php/conf.d/app.ini
COPY deploy/nginx.conf /etc/nginx/http.d/default.conf

# Set permissions for runtime
RUN chown -R www-data:www-data storage bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache

# Optional: persist storage folder
VOLUME ["/var/www/html/storage"]

# Expose HTTP port
EXPOSE 80

# Start Nginx and PHP-FPM together
CMD ["sh", "-c", "nginx && php-fpm"]

#  docker build -f deploy/Dockerfile -t syshero/tripsummit-laravel:1.0.0 .
