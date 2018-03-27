# Drush Docker Container
FROM drush/drush:base
MAINTAINER Rob Loach <robloach@gmail.com>

# Set the Drush version.
ENV DRUSH_VERSION 9.2.1

# Install Drush using Composer.
RUN composer global require drush/drush:"$DRUSH_VERSION" --prefer-dist

# Display which version of Drush was installed.
RUN drush --version
