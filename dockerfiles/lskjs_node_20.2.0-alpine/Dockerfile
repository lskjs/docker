FROM node:20.2.0-alpine

RUN \
    apk add --no-cache which curl && \
    npm i -g pnpm@8 && \
    pnpm config set store-dir .pnpm-store
