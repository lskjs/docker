## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:19.3.0-alpine dockerfiles/lskjs_node_19.3.0-alpine && \
docker build -t lskjs/node:19.3.0-alpine dockerfiles/lskjs_node_19.3.0-alpine && \
echo ">>" docker push lskjs/node:19.3.0-alpine && \
docker push lskjs/node:19.3.0-alpine