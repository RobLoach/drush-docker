# Drush Docker Container
FROM composer/composer:php5-alpine
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apk --update add \
    build-base \
    libpq \
    mysql-client \
    postgresql-client \
    postgresql-dev \
    tar && \
    docker-php-ext-install mysqli pgsql pdo_mysql pdo_pgsql && \
    apk del build-base postgresql-dev && \
    rm -rf /var/cache/apk/*

# Add the Redis PHP module.
RUN git clone --branch="2.2.7" https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
  # Install the Redis module.
  docker-php-ext-install redis && \
  # Test to make sure it's available.
  php -m && php -r "new Redis();"

# Update the entry point of the application
ENTRYPOINT ["drush"]
