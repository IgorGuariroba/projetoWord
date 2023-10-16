FROM wordpress:php8.2-apache

# Instale as extensões necessárias
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libzip-dev \
    libicu-dev \
    libonig-dev \
  && docker-php-ext-install \
    pdo_mysql \
    mbstring \
    zip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*