# Drush Docker Container
FROM drush/drush:base
MAINTAINER Rob Loach <robloach@gmail.com>

# Drush 6 needs the Console_Table pear.
RUN pear install Console_Table

# Set the Drush version.
ENV DRUSH_VERSION 6.7.0

# Install Drush using Composer.
RUN composer global require drush/drush:"$DRUSH_VERSION" --prefer-dist

# Display which version of Drush was installed
RUN drush --version
