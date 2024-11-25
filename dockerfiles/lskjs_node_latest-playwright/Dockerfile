FROM node:latest

RUN \
    npm i -g pnpm@8 && \
    pnpm config set store-dir .pnpm-store && \
    pnpm dlx playwright install --with-deps
