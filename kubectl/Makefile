.DEFAULT_GOAL := all
K8S_VERSION=v1.21.2
download:
	curl -s -O https://storage.googleapis.com/kubernetes-release/release/$(K8S_VERSION)/bin/linux/amd64/kubectl
# curl -s -O https://storage.googleapis.com/kubernetes-release/release/$(K8S_VERSION)/bin/darwin/amd64/kubectl
	chmod +x kubectl
build:
	docker build -t alecitohidalgo/kubectl:$(K8S_VERSION) .
push:
	docker push alecitohidalgo/kubectl:$(K8S_VERSION)
all: download build push
