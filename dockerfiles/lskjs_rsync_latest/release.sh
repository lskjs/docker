## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/rsync:latest dockerfiles/lskjs_rsync_latest && \
docker build -t lskjs/rsync:latest dockerfiles/lskjs_rsync_latest && \
echo ">>" docker push lskjs/rsync:latest && \
docker push lskjs/rsync:latest