# Drush Docker Container
FROM composer/composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install pdo_mysql

# Add the Redis PHP module.
RUN git clone --branch="php7" https://github.com/phpredis/phpredis.git /tmp/phpredis && cd /tmp/phpredis && \
  # Compile and install it.
  phpize && ./configure && make && make install && make test && rm -rf /tmp/phpredis && \
  # Enable the extension.
  echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini && \
  # Test to make sure it's available.
  php -m && php -r "new Redis();"

# Update the entry point of the application
ENTRYPOINT ["drush"]
