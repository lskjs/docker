## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/rsync:3.16.0 dockerfiles/lskjs_rsync_3.16.0 && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/rsync:3.16.0 dockerfiles/lskjs_rsync_3.16.0