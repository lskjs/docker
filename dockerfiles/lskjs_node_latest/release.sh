## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:latest dockerfiles/lskjs_node_latest && \
docker build -t lskjs/node:latest dockerfiles/lskjs_node_latest && \
echo ">>" docker push lskjs/node:latest && \
docker push lskjs/node:latest