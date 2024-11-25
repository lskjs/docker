## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.0-alpine dockerfiles/lskjs_node_21.6.0-alpine && \
docker build -t lskjs/node:21.6.0-alpine dockerfiles/lskjs_node_21.6.0-alpine && \
echo ">>" docker push lskjs/node:21.6.0-alpine && \
docker push lskjs/node:21.6.0-alpine