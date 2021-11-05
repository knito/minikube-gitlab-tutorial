FROM alpine:3

RUN apk add --no-cache \
		ca-certificates \
		curl \
		openssl

# ENV DOCKER_BUCKET get.docker.com
ENV DOCKER_BUCKET download.docker.com
# ENV DOCKER_VERSION 1.11.2
ENV DOCKER_VERSION 20.10.9
# ENV DOCKER_SHA256 8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
ENV DOCKER_SHA256 caf74e54b58c0b38bb4d96c8f87665f29b684371c9a325562a3904b8c389995e

# https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz
RUN set -x \
	&& curl -fSL "https://${DOCKER_BUCKET}/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz \
	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - \
	&& tar -xzvf docker.tgz \
	&& mv docker/* /usr/local/bin/ \
	&& rmdir docker \
	&& rm docker.tgz \
	&& docker -v

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
