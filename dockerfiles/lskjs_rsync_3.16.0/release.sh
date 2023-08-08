## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/rsync:3.16.0 dockerfiles/lskjs_rsync_3.16.0 && \
docker build -t lskjs/rsync:3.16.0 dockerfiles/lskjs_rsync_3.16.0 && \
echo ">>" docker push lskjs/rsync:3.16.0 && \
docker push lskjs/rsync:3.16.0