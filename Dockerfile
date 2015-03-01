# Drush Docker Container
FROM composer/composer
MAINTAINER Rob Loach <robloach@gmail.com>

# Install Drush using Composer
RUN composer global require drush/drush:~7.0.0@alpha

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Display which version of Drush was installed
RUN drush --version

# Update the entry point of the application
ENTRYPOINT ["drush"]
