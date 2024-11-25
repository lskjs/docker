## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/kubectl:1.30 dockerfiles/lskjs_kubectl_1.30 && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/kubectl:1.30 dockerfiles/lskjs_kubectl_1.30