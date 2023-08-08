## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/kubectl:latest dockerfiles/lskjs_kubectl_latest && \
docker build -t lskjs/kubectl:latest dockerfiles/lskjs_kubectl_latest && \
echo ">>" docker push lskjs/kubectl:latest && \
docker push lskjs/kubectl:latest