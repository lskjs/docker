## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:latest-playwright dockerfiles/lskjs_node_latest-playwright && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:latest-playwright dockerfiles/lskjs_node_latest-playwright