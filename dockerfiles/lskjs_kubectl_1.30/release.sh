## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/kubectl:1.30 dockerfiles/lskjs_kubectl_1.30 && \
docker build -t lskjs/kubectl:1.30 dockerfiles/lskjs_kubectl_1.30 && \
echo ">>" docker push lskjs/kubectl:1.30 && \
docker push lskjs/kubectl:1.30