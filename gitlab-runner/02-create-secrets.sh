kubectl --namespace gitlab create secret generic gitlab-secret \
  --from-file=./REGISTRATION_TOKEN

kubectl create secret generic google-application-credentials \
  --from-file=gcs-application-credentials-file=sa/sa-base-images.json
