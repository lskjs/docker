## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/kubectl:1.27 dockerfiles/lskjs_kubectl_1.27 && \
docker build -t lskjs/kubectl:1.27 dockerfiles/lskjs_kubectl_1.27 && \
echo ">>" docker push lskjs/kubectl:1.27 && \
docker push lskjs/kubectl:1.27