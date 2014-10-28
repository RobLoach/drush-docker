# Drush Docker Container
FROM composer/composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Install Drush using Composer
RUN composer global require drush/drush:~7.0.0@alpha

# Display which version of Drush was installed
RUN /.composer/vendor/bin/drush.php --version

# Update the entry point of the application
ENTRYPOINT ["/.composer/vendor/bin/drush.php"]
