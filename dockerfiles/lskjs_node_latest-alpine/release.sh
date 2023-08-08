## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:latest-alpine dockerfiles/lskjs_node_latest-alpine && \
docker build -t lskjs/node:latest-alpine dockerfiles/lskjs_node_latest-alpine && \
echo ">>" docker push lskjs/node:latest-alpine && \
docker push lskjs/node:latest-alpine