FROM node:20.2.0

RUN \
    npm i -g pnpm@8 && \
    pnpm config set store-dir .pnpm-store && \
    pnpm dlx playwright install --with-deps
