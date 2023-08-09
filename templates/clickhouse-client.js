/**
 * NOTE: Based on
 * https://hub.docker.com/r/clickhouse/clickhouse-server/
 * and
 * https://hub.docker.com/r/yandex/clickhouse-client/dockerfile
 */

module.exports = ({ from = 'clickhouse/clickhouse-server:latest' }) =>
  `
# Based on
# https://hub.docker.com/r/clickhouse/clickhouse-server/
# and
# https://hub.docker.com/r/yandex/clickhouse-client/dockerfile

FROM ${from}

ARG NODE_ENV=production
ENV NODE_ENV=\${NODE_ENV}

RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
RUN apt-get update && apt-get -y install nano cron nodejs mongodb-clients
RUN npm i -g @lskjs/rabbit-cli@2.54.1
`.trimStart();
