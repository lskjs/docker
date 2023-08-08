## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/dind:latest dockerfiles/lskjs_dind_latest && \
docker build -t lskjs/dind:latest dockerfiles/lskjs_dind_latest && \
echo ">>" docker push lskjs/dind:latest && \
docker push lskjs/dind:latest