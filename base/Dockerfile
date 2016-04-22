# Drush Docker Container
FROM composer/composer:php5
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install pdo_mysql

# Add the Redis PHP module.
RUN git clone --branch="2.2.7" https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
  # Install the Redis module.
  docker-php-ext-install redis && \
  # Test to make sure it's available.
  php -m && php -r "new Redis();"

# Update the entry point of the application
ENTRYPOINT ["drush"]
