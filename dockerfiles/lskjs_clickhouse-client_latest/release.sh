## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/clickhouse-client:latest dockerfiles/lskjs_clickhouse-client_latest && \
docker build -t lskjs/clickhouse-client:latest dockerfiles/lskjs_clickhouse-client_latest && \
echo ">>" docker push lskjs/clickhouse-client:latest && \
docker push lskjs/clickhouse-client:latest