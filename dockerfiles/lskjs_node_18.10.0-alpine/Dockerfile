FROM node:18.10.0-alpine

RUN \
    apk add --no-cache which curl && \
    npm i -g pnpm@7 && \
    pnpm config set store-dir .pnpm-store
