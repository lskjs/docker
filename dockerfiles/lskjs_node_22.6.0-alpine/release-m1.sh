## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:22.6.0-alpine dockerfiles/lskjs_node_22.6.0-alpine && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:22.6.0-alpine dockerfiles/lskjs_node_22.6.0-alpine