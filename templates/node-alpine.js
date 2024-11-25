const {
  concat,
  installLinuxPackages,
  installPnpmPackages,
  runCommands,
  installPnpm,
} = require('./_utils');

module.exports = ({ from, pnpmVersion, pnpmPackages, commands, linuxPackages }) =>
  `
FROM ${from}

RUN \\
${concat([
  installLinuxPackages({ linuxPackages, linuxType: 'alpine' }),
  installPnpm({ pnpmVersion }),
  installPnpmPackages({ pnpmPackages }),
  runCommands({ commands }),
])}
`.trimStart();
