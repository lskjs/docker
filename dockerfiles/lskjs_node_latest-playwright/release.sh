## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:latest-playwright dockerfiles/lskjs_node_latest-playwright && \
docker build -t lskjs/node:latest-playwright dockerfiles/lskjs_node_latest-playwright && \
echo ">>" docker push lskjs/node:latest-playwright && \
docker push lskjs/node:latest-playwright