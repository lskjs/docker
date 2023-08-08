## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:19.3.0 dockerfiles/lskjs_node_19.3.0 && \
docker build -t lskjs/node:19.3.0 dockerfiles/lskjs_node_19.3.0 && \
echo ">>" docker push lskjs/node:19.3.0 && \
docker push lskjs/node:19.3.0