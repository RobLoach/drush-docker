# Drush Docker Container
FROM drush/drush:base
MAINTAINER Rob Loach <robloach@gmail.com>

# Set the latest drush version
# @todo: Doing things this way so we can actually trigger a rebuild of this
#        image vs pulling from the "latest" link
ENV DRUSH_VERSION 8.0.5

# So phar away... doesn't anybody composer anymore?
RUN curl -fsSL -o /usr/local/bin/drush "https://github.com/drush-ops/drush/releases/download/$DRUSH_VERSION/drush.phar" && \
  chmod +x /usr/local/bin/drush

# Test your install.
RUN php /usr/local/bin/drush core-status
