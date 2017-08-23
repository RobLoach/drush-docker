# Drush Docker Container for Backdrop CMS
FROM drush/drush:8
MAINTAINER Mike Pirog

# Set the Backdrop Drush version.
ENV BACKDRUSH_VERSION 0.0.5

# Create a drush image for the Backdrop CMS lovers of the world
# See https://github.com/backdrop-contrib/drush
RUN mkdir -p /usr/share/drush/commands/backdrop && \
  cd /usr/share/drush/commands/backdrop && \
  curl -fsSL "https://github.com/backdrop-contrib/drush/archive/${BACKDRUSH_VERSION}.tar.gz" | tar xvz --strip-components 1

# Make sure our cache is wiped and plugins are loaded.
RUN drush cache-clear drush
