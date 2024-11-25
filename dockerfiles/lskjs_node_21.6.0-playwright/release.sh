## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.0-playwright dockerfiles/lskjs_node_21.6.0-playwright && \
docker build -t lskjs/node:21.6.0-playwright dockerfiles/lskjs_node_21.6.0-playwright && \
echo ">>" docker push lskjs/node:21.6.0-playwright && \
docker push lskjs/node:21.6.0-playwright