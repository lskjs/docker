## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/rsync:3.20.0 dockerfiles/lskjs_rsync_3.20.0 && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/rsync:3.20.0 dockerfiles/lskjs_rsync_3.20.0