## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:22.6.0-playwright dockerfiles/lskjs_node_22.6.0-playwright && \
docker build -t lskjs/node:22.6.0-playwright dockerfiles/lskjs_node_22.6.0-playwright && \
echo ">>" docker push lskjs/node:22.6.0-playwright && \
docker push lskjs/node:22.6.0-playwright