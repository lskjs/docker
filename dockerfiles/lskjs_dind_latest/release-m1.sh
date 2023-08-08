## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/dind:latest dockerfiles/lskjs_dind_latest && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/dind:latest dockerfiles/lskjs_dind_latest