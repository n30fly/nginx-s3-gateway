FROM ghcr.io/nginxinc/nginx-s3-gateway/nginx-oss-s3-gateway:latest

RUN set -eux \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install --yes patch; \
    rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list

ADD docker-entrypoint.d/01-apply-patches.sh /docker-entrypoint.d/01-apply-patches.sh
ADD patches /opt/
