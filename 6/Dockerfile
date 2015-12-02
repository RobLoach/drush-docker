# Drush Docker Container
FROM drush/drush:base
MAINTAINER Rob Loach <robloach@gmail.com>

# Drush 6 needs the Console_Table pear.
RUN pear install Console_Table

# Install Drush using Composer
RUN composer global require drush/drush:"6.*" --prefer-dist

# Setup the symlink
RUN ln -sf $COMPOSER_HOME/vendor/bin/drush.php /usr/local/bin/drush

# Display which version of Drush was installed
RUN drush --version
