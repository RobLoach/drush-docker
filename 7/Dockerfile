# Drush Docker Container
FROM drush/drush:base
MAINTAINER Rob Loach <robloach@gmail.com>

# Install Drush using Composer
RUN composer global require drush/drush:"7.*" --prefer-dist

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Display which version of Drush was installed
RUN drush --version
