## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:21.6.0-alpine-gyp dockerfiles/lskjs_node_21.6.0-alpine-gyp && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:21.6.0-alpine-gyp dockerfiles/lskjs_node_21.6.0-alpine-gyp