## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:17.4.0-clickhouse-20.8.2.3 dockerfiles/lskjs_node_17.4.0-clickhouse-20.8.2.3 && \
docker build -t lskjs/node:17.4.0-clickhouse-20.8.2.3 dockerfiles/lskjs_node_17.4.0-clickhouse-20.8.2.3 && \
echo ">>" docker push lskjs/node:17.4.0-clickhouse-20.8.2.3 && \
docker push lskjs/node:17.4.0-clickhouse-20.8.2.3