const installLinuxPackages = ({ linuxPackages, linuxType }) => {
  if (!linuxPackages) return '';
  if (linuxType === 'alpine') return `apk add --no-cache ${linuxPackages.join(' ')}`;
  const packs = linuxPackages.filter((a) => a !== 'which');
  return `apt-get install --no-install-recommends -y ${packs.join(' ')}`;
};

const installPnpmPackages = ({ pnpmPackages = [] }) => {
  if (!pnpmPackages.length) return '';
  return `pnpm i ${pnpmPackages.join(' ')}`;
};
const runCommands = ({ commands = [] }) => {
  if (!commands.length) return '';
  return `${commands.join(' && ')}`;
};

const concat = (arr) => `    ${arr.filter(Boolean).join(' && \\\n    ')}`;

const installPnpm = ({ pnpmVersion }) => {
  if (!pnpmVersion) return '';
  return concat([`npm i -g pnpm@${pnpmVersion}`, 'pnpm config set store-dir .pnpm-store']).trim();
};

module.exports = {
  installLinuxPackages,
  installPnpmPackages,
  installPnpm,
  runCommands,
  concat,
};
