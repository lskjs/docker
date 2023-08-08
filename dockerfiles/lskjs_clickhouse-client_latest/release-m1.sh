## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/clickhouse-client:latest dockerfiles/lskjs_clickhouse-client_latest && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/clickhouse-client:latest dockerfiles/lskjs_clickhouse-client_latest