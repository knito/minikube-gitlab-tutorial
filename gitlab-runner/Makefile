.DEFAULT_GOAL=info

info:
	@echo "Enable Gitlab Runner locally"

all:	create-namespace create-gitlab-secret create-gcp-secret launch-gitlab-runner

create-namespace:
	kubectl apply -f 01-gitlab-namespace.yaml

create-gitlab-secret:
	kubectl create secret generic gitlab-secret --namespace gitlab \
		--from-file=./REGISTRATION_TOKEN

create-gcp-secret:
	kubectl create secret generic google-application-credentials \
    --from-file=gcs-application-credentials-file=sa/sa-base-images.json

launch-gitlab-runner:
	kubectl apply -f 03-gitlab-runner-deployment.yaml

