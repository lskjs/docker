## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:20.2.0-playwright dockerfiles/lskjs_node_20.2.0-playwright && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:20.2.0-playwright dockerfiles/lskjs_node_20.2.0-playwright