.DEFAULT_GOAL := docker-build
DOCKER_BUILDBOX_VERSION := 0.0.1

build:
	mvn clean test package

docker-build:
	docker run --rm -it -v $(shell pwd):/keycloak-duo-spi -w /keycloak-duo-spi ohiosupercomputer/keycloak_duo_spi_buildbox:latest mvn clean test package

docker-buildbox:
	docker build -t ohiosupercomputer/keycloak_duo_spi_buildbox:${DOCKER_BUILDBOX_VERSION} ./build
