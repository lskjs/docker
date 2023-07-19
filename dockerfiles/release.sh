docker build -t lskjs/dind:latest dockerfiles/lskjs_dind_latest && \
docker push lskjs/dind:latest && \
docker build -t lskjs/kubectl:1.27 dockerfiles/lskjs_kubectl_1.27 && \
docker push lskjs/kubectl:1.27 && \
docker build -t lskjs/kubectl:latest dockerfiles/lskjs_kubectl_latest && \
docker push lskjs/kubectl:latest && \
docker build -t lskjs/node:17.4.0 dockerfiles/lskjs_node_17.4.0 && \
docker push lskjs/node:17.4.0 && \
docker build -t lskjs/node:17.4.0-alpine dockerfiles/lskjs_node_17.4.0-alpine && \
docker push lskjs/node:17.4.0-alpine && \
docker build -t lskjs/node:17.4.0-clickhouse-20.8.2.3 dockerfiles/lskjs_node_17.4.0-clickhouse-20.8.2.3 && \
docker push lskjs/node:17.4.0-clickhouse-20.8.2.3 && \
docker build -t lskjs/node:18.10.0 dockerfiles/lskjs_node_18.10.0 && \
docker push lskjs/node:18.10.0 && \
docker build -t lskjs/node:18.10.0-alpine dockerfiles/lskjs_node_18.10.0-alpine && \
docker push lskjs/node:18.10.0-alpine && \
docker build -t lskjs/node:18.10.0-puppeteer dockerfiles/lskjs_node_18.10.0-puppeteer && \
docker push lskjs/node:18.10.0-puppeteer && \
docker build -t lskjs/node:19.3.0 dockerfiles/lskjs_node_19.3.0 && \
docker push lskjs/node:19.3.0 && \
docker build -t lskjs/node:19.3.0-alpine dockerfiles/lskjs_node_19.3.0-alpine && \
docker push lskjs/node:19.3.0-alpine && \
docker build -t lskjs/node:19.3.0-puppeteer dockerfiles/lskjs_node_19.3.0-puppeteer && \
docker push lskjs/node:19.3.0-puppeteer && \
docker build -t lskjs/node:19.5.0 dockerfiles/lskjs_node_19.5.0 && \
docker push lskjs/node:19.5.0 && \
docker build -t lskjs/node:19.5.0-alpine dockerfiles/lskjs_node_19.5.0-alpine && \
docker push lskjs/node:19.5.0-alpine && \
docker build -t lskjs/node:19.5.0-clickhouse dockerfiles/lskjs_node_19.5.0-clickhouse && \
docker push lskjs/node:19.5.0-clickhouse && \
docker build -t lskjs/node:19.5.0-clickhouse-20.8.2.3 dockerfiles/lskjs_node_19.5.0-clickhouse-20.8.2.3 && \
docker push lskjs/node:19.5.0-clickhouse-20.8.2.3 && \
docker build -t lskjs/node:19.5.0-puppeteer dockerfiles/lskjs_node_19.5.0-puppeteer && \
docker push lskjs/node:19.5.0-puppeteer && \
docker build -t lskjs/node:20.2.0 dockerfiles/lskjs_node_20.2.0 && \
docker push lskjs/node:20.2.0 && \
docker build -t lskjs/node:20.2.0-alpine dockerfiles/lskjs_node_20.2.0-alpine && \
docker push lskjs/node:20.2.0-alpine && \
docker build -t lskjs/node:20.2.0-clickhouse dockerfiles/lskjs_node_20.2.0-clickhouse && \
docker push lskjs/node:20.2.0-clickhouse && \
docker build -t lskjs/node:20.2.0-puppeteer dockerfiles/lskjs_node_20.2.0-puppeteer && \
docker push lskjs/node:20.2.0-puppeteer && \
docker build -t lskjs/node:latest dockerfiles/lskjs_node_latest && \
docker push lskjs/node:latest && \
docker build -t lskjs/node:latest-alpine dockerfiles/lskjs_node_latest-alpine && \
docker push lskjs/node:latest-alpine && \
docker build -t lskjs/rsync:3.16.0 dockerfiles/lskjs_rsync_3.16.0 && \
docker push lskjs/rsync:3.16.0 && \
docker build -t lskjs/rsync:latest dockerfiles/lskjs_rsync_latest && \
docker push lskjs/rsync:latest && \
echo FINISH