build:
	docker build -t drush/drush:base-php5 base
	docker build -t drush/drush:php5 8
	docker build -t drush/drush:9-php5 9
	docker build -t drush/drush:8-php5 8
	docker build -t drush/drush:7-php5 7
	docker build -t drush/drush:backdrop-php5 backdrop

version:
	docker run drush/drush:php5 --version
	docker run drush/drush:9-php5 --version
	docker run drush/drush:8-php5 --version
	docker run drush/drush:7-php5 --version
	docker run drush/drush:backdrop-php5 --version

test:
	@make version
