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
docker build -t drush/drush .
```


## Usage

To execute Drush directly, run the container with `docker run`:

```
docker run drush/drush
docker run drush/drush help
docker run drush/drush --version
docker run drush/drush status
```
