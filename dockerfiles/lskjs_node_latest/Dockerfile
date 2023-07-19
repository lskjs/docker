FROM node:latest

RUN \
    apt-get install --no-install-recommends -y curl && \
    npm i -g pnpm@7 && \
    pnpm config set store-dir .pnpm-store
