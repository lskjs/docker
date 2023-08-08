## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:20.2.0-clickhouse dockerfiles/lskjs_node_20.2.0-clickhouse && \
docker build -t lskjs/node:20.2.0-clickhouse dockerfiles/lskjs_node_20.2.0-clickhouse && \
echo ">>" docker push lskjs/node:20.2.0-clickhouse && \
docker push lskjs/node:20.2.0-clickhouse