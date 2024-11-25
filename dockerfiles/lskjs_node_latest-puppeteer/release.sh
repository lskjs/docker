## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:latest-puppeteer dockerfiles/lskjs_node_latest-puppeteer && \
docker build -t lskjs/node:latest-puppeteer dockerfiles/lskjs_node_latest-puppeteer && \
echo ">>" docker push lskjs/node:latest-puppeteer && \
docker push lskjs/node:latest-puppeteer