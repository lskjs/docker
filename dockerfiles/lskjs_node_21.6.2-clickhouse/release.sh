## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.2-clickhouse dockerfiles/lskjs_node_21.6.2-clickhouse && \
docker build -t lskjs/node:21.6.2-clickhouse dockerfiles/lskjs_node_21.6.2-clickhouse && \
echo ">>" docker push lskjs/node:21.6.2-clickhouse && \
docker push lskjs/node:21.6.2-clickhouse