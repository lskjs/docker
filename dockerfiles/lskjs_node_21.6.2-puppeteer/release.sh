## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:21.6.2-puppeteer dockerfiles/lskjs_node_21.6.2-puppeteer && \
docker build -t lskjs/node:21.6.2-puppeteer dockerfiles/lskjs_node_21.6.2-puppeteer && \
echo ">>" docker push lskjs/node:21.6.2-puppeteer && \
docker push lskjs/node:21.6.2-puppeteer