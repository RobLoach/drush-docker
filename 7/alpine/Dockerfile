# Drush Docker Container
FROM drush/drush:base-alpine
MAINTAINER Rob Loach <robloach@gmail.com>

# Set the Drush version.
ENV DRUSH_VERSION 7.3.0

# Install Drush using Composer.
RUN composer global require drush/drush:"$DRUSH_VERSION" --prefer-dist

# Include bin path
ENV PATH="/tmp/vendor/bin:${PATH}"

# Display which version of Drush was installed
RUN drush --version
