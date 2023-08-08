## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/  && \
echo ">>" docker build -t lskjs/node:20.2.0-puppeteer dockerfiles/lskjs_node_20.2.0-puppeteer && \
docker build -t lskjs/node:20.2.0-puppeteer dockerfiles/lskjs_node_20.2.0-puppeteer && \
echo ">>" docker push lskjs/node:20.2.0-puppeteer && \
docker push lskjs/node:20.2.0-puppeteer