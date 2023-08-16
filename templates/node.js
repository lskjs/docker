const linuxPackages = ({ gyp, packages }) =>
  [gyp && ' g++ make python3', packages].filter(Boolean).join(' ');

module.exports = ({ from, pnpmVersion = 7, gyp, linuxPackages: packages = '' }) =>
  `
FROM ${from}

RUN \\
    apt-get install --no-install-recommends -y curl${linuxPackages({ gyp, packages })} && \\
    npm i -g pnpm@${pnpmVersion} && \\
    pnpm config set store-dir .pnpm-store
`.trimStart();
