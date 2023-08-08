/**
 * NOTE: Based on
 * https://github.com/bitnami/containers/blob/main/bitnami/kubectl/1.27/debian-11/Dockerfile
 */

module.exports = ({ from = 'ubuntu:18.04' }) =>
  `
# Based on
# https://hub.docker.com/r/yandex/clickhouse-client/dockerfile
FROM ${from}

ARG repository="deb https://repo.yandex.ru/clickhouse/deb/dists/stable/ main/"
ARG version=19.1.13

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        apt-transport-https \
        dirmngr \
        gnupg \
    && mkdir -p /etc/apt/sources.list.d \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv E0C56BD4 \
    && echo $repository > /etc/apt/sources.list.d/clickhouse.list \
    && apt-get update \
    && env DEBIAN_FRONTEND=noninteractive \
        apt-get install --allow-unauthenticated --yes --no-install-recommends \
            clickhouse-client=$version \
            clickhouse-common-static=$version \
            locales \
            tzdata \
    && rm -rf /var/lib/apt/lists/* /var/cache/debconf \
    && apt-get clean

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENTRYPOINT ["/usr/bin/clickhouse-client"]
`.trimStart();
