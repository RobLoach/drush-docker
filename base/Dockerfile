# Drush Docker Container
FROM composer/composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Set Always Populate Raw POST Data to -1
RUN echo "always_populate_raw_post_data=-1" > $PHP_INI_DIR/conf.d/always_populate_raw_post_data.ini

# Add common extensions
RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install pdo_mysql

# Update the entry point of the application
ENTRYPOINT ["drush"]
