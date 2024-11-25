## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:20.2.0-playwright dockerfiles/lskjs_node_20.2.0-playwright && \
docker build -t lskjs/node:20.2.0-playwright dockerfiles/lskjs_node_20.2.0-playwright && \
echo ">>" docker push lskjs/node:20.2.0-playwright && \
docker push lskjs/node:20.2.0-playwright