module.exports = ({ from, pnpmVersion = 7 }) =>
  `
FROM ${from}

RUN \\
    apt-get install --no-install-recommends -y curl && \\
    npm i -g pnpm@${pnpmVersion} && \\
    pnpm config set store-dir .pnpm-store
`.trimStart();
