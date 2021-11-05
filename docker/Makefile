.DEFAULT_GOAL := all
# DOCKER_VERSION=1.11.2
DOCKER_VERSION=20.10.9
all: build push
build:
	docker build -t alecitohidalgo/docker:$(DOCKER_VERSION) .
push:
	docker push alecitohidalgo/docker:$(DOCKER_VERSION)
