FROM php:8.0-apache

# Install OpenSSL 1.0
RUN apt-get update && apt-get install -y \
    libssl1.0-dev \
    libssl-dev \
    && docker-php-ext-install openssl

COPY . /var/www/html/

# Expose port 80
EXPOSE 80
