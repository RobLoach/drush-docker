# Drush Docker Container [![Build Status](https://travis-ci.org/RobLoach/drush-docker.svg?branch=master)](https://travis-ci.org/RobLoach/drush-docker)

A [Docker](http://docker.com) container to run [Drush](https://github.com/drush-ops/drush), [Drupal](http://drupal.org)'s command line tool.

## Usage

This covers how to run the Drush container through the [Docker CLI](http://docker.com).

### Pull

Pull `drush/drush` from the Docker repository:

``` bash
docker pull drush/drush
```

Alternatively, you can download a specific version of Drush:

``` bash
docker pull drush/drush:8
```

### Run

To execute Drush directly, run the container with `docker run`, mounting the `/app` volume:

``` bash
docker run -v $(pwd):/app drush/drush
docker run -v $(pwd):/app drush/drush help
docker run -v $(pwd):/app drush/drush --version
docker run -v $(pwd):/app drush/drush status
```

If you installed a specific version of Drush, run it with:

``` bash
docker run -v $(pwd):/app drush/drush:8 --version
```

## Development

1. Download the source:
  ``` bash
  git clone https://github.com/RobLoach/drush-docker.git
  cd drush-docker
  ```

2. Build one of the images:
  ``` bash
  docker build -t drush/drush:8 8
  ```

3. Use the `Makefile` to build and test all images:
  ``` bash
  make
  ```

4. Visit [the `drush/drush` Docker Hub](https://hub.docker.com/r/drush/drush/) for build details.

5. Submit Pull Requests and create issues for new changes and features you'd like to add.
