FROM node:19.3.0

RUN \
    apt-get install --no-install-recommends -y curl && \
    npm i -g pnpm@7 && \
    pnpm config set store-dir .pnpm-store
