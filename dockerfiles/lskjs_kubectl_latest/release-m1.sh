## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/kubectl:latest dockerfiles/lskjs_kubectl_latest && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/kubectl:latest dockerfiles/lskjs_kubectl_latest