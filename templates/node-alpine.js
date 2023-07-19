module.exports = ({ from, pnpmVersion = 7 }) =>
  `
FROM ${from}

RUN \\
    apk add --no-cache which curl && \\
    npm i -g pnpm@${pnpmVersion} && \\
    pnpm config set store-dir .pnpm-store
`.trimStart();
