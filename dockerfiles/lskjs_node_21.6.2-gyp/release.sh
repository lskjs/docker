## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.2-gyp dockerfiles/lskjs_node_21.6.2-gyp && \
docker build -t lskjs/node:21.6.2-gyp dockerfiles/lskjs_node_21.6.2-gyp && \
echo ">>" docker push lskjs/node:21.6.2-gyp && \
docker push lskjs/node:21.6.2-gyp