FROM node:21.6.2

RUN \
    apt-get install --no-install-recommends -y curl g++ make python3 && \
    npm i -g pnpm@8 && \
    pnpm config set store-dir .pnpm-store
