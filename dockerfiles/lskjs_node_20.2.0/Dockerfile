FROM node:20.2.0

RUN \
    apt-get install --no-install-recommends -y curl && \
    npm i -g pnpm@8 && \
    pnpm config set store-dir .pnpm-store
