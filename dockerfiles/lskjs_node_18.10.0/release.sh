## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:18.10.0 dockerfiles/lskjs_node_18.10.0 && \
docker build -t lskjs/node:18.10.0 dockerfiles/lskjs_node_18.10.0 && \
echo ">>" docker push lskjs/node:18.10.0 && \
docker push lskjs/node:18.10.0