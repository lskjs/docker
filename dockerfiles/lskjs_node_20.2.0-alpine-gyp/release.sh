## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:20.2.0-alpine-gyp dockerfiles/lskjs_node_20.2.0-alpine-gyp && \
docker build -t lskjs/node:20.2.0-alpine-gyp dockerfiles/lskjs_node_20.2.0-alpine-gyp && \
echo ">>" docker push lskjs/node:20.2.0-alpine-gyp && \
docker push lskjs/node:20.2.0-alpine-gyp