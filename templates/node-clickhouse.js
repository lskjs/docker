/* eslint-disable max-len */
module.exports = ({ from, clickhouseVersion }) =>
  `
FROM ${from}

ARG repository="deb http://repo.yandex.ru/clickhouse/deb/stable/ main/"
ARG version=${clickhouseVersion}

RUN apt-get update \\
    && apt-get install --yes --no-install-recommends \\
      apt-transport-https \\
      dirmngr \\
      gnupg \\
    && mkdir -p /etc/apt/sources.list.d \\
    && apt-key adv --keyserver keyserver.ubuntu.com --recv E0C56BD4 \\
    && echo $repository > /etc/apt/sources.list.d/clickhouse.list \\
    && apt-get update \\
    && env DEBIAN_FRONTEND=noninteractive \\
      apt-get install --allow-unauthenticated --yes --no-install-recommends \\
        clickhouse-client=$version \\
        clickhouse-common-static=$version \\
        locales \\
        tzdata \\
    && rm -rf /var/lib/apt/lists/* /var/cache/debconf \\
    && apt-get clean


`.trimStart();
