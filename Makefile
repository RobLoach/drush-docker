build:
	docker build -t drush/drush:base base
	docker build -t drush/drush master
	docker build -t drush/drush:9 9
	docker build -t drush/drush:8 8
	docker build -t drush/drush:7 7
	docker build -t drush/drush:6 6
	docker build -t drush/drush:backdrop backdrop

version:
	docker run drush/drush --version
	docker run drush/drush:9 --version
	docker run drush/drush:8 --version
	docker run drush/drush:7 --version
	docker run drush/drush:6 --version
	docker run drush/drush:backdrop --version

.PHONY: build
