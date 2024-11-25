## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:latest-puppeteer dockerfiles/lskjs_node_latest-puppeteer && \
docker buildx build --platform linux/amd64,linux/arm64 --push -t lskjs/node:latest-puppeteer dockerfiles/lskjs_node_latest-puppeteer