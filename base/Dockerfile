# Drush Docker Container
FROM composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apk add --update mysql-client libpq postgresql-dev postgresql-client
RUN docker-php-ext-install pdo_mysql pdo_pgsql

# SQLite support
RUN echo "deb http://ftp.hosteurope.de/mirror/packages.dotdeb.org/ stable all" >> /etc/apt/sources.list && echo "deb-src http://ftp.hosteurope.de/mirror/packages.dotdeb.org/ stable all" >> /etc/apt/sources.list

RUN wget https://www.dotdeb.org/dotdeb.gpg && apt-key add dotdeb.gpg && apt-get update

RUN apt-get install -y libsqlite3-dev sqlite3 php7.0-sqlite3 && \
    docker-php-ext-install pdo_sqlite

# Add the Redis PHP module.
RUN git clone --branch="master" https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
  # Install the Redis module.
  docker-php-ext-install redis && \
  # Test to make sure it's available.
  php -m && php -r "new Redis();"

# Update the entry point of the application
ENTRYPOINT ["drush"]
