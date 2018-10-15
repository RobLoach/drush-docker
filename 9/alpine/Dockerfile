# Drush Docker Container
FROM drush/drush:base-alpine
MAINTAINER Rob Loach <robloach@gmail.com>

# Install Drush launcher
RUN wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/download/0.6.0/drush.phar && \
  chmod +x drush.phar && \
  mv drush.phar /usr/local/bin/drush

# Display which version of Drush was installed.
RUN drush --drush-launcher-version
