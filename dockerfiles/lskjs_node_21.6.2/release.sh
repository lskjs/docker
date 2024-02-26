## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.2 dockerfiles/lskjs_node_21.6.2 && \
docker build -t lskjs/node:21.6.2 dockerfiles/lskjs_node_21.6.2 && \
echo ">>" docker push lskjs/node:21.6.2 && \
docker push lskjs/node:21.6.2