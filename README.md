# Drush Docker Container

A [Docker](http://docker.io) container to run
[Drush](https://github.com/drush-ops/drush), [Drupal](http://drupal.org)'s
command line tool.

## Installation

Pull `drush/drush` from the Docker repository:

```
docker pull drush/drush
```

Or build `drush/drush` from source:

```
git clone https://github.com/RobLoach/drush-docker.git
cd drush-docker
cd 8
docker build -t drush/drush:8 .
```

## Usage

To execute Drush directly, run the container with `docker run`, mounting the `/app` volume:

```
docker run drush/drush -v $(pwd):/app
docker run drush/drush -v $(pwd):/app help
docker run drush/drush -v $(pwd):/app --version
docker run drush/drush -v $(pwd):/app status
```
