#!/usr/bin/env node
const { run } = require('@lskjs/cli-utils');
const { execSync } = require('child_process');
const { mapSeries } = require('fishbird');
const { buildDir } = require('../../config');
const fs = require('fs');
const isM1 = require('os').arch() === 'arm64' && require('os').cpus()[0].model.includes('Apple M');

async function main({ args }) {
  const isRelease = args.includes('--release');

  const getCmds = ({ isM1 } = {}) =>
    fs
      .readdirSync(buildDir)
      .map((dirname) => {
        const chunks = dirname.split('_');
        let group;
        let name;
        let version;
        if (chunks.length === 3) {
          [group, name, version] = chunks;
        } else if (chunks.length === 2) {
          [name, version] = chunks;
        } else {
          return [];
          // throw new Error('Invalid dirname');
        }
        const path = `${buildDir}/${dirname}`;
        const imageName = group ? `${group}/${name}:${version}` : `${name}:${version}`;
        if (isM1) {
          return `docker buildx build --platform linux/amd64,linux/arm64 --push -t ${imageName} ${path}`;
        }
        const cmd = 'build';
        return [`docker ${cmd} -t ${imageName} ${path}`, `docker push ${imageName}`];
      })
      .flat();
  if (isRelease) {
    const cmds = getCmds({ isM1 });
    await mapSeries(cmds, (cmd) => execSync(cmd));
  } else {
    const cmds = getCmds({ isM1: false });
    cmds.push('echo FINISH');
    fs.writeFileSync('./scripts/sh/release.sh', cmds.join(' && \\\n'));

    const cmdsx = getCmds({ isM1: true });
    cmdsx.push('echo FINISH');
    fs.writeFileSync('./scripts/sh/releasex.sh', cmdsx.join(' && \\\n'));
  }
}

module.exports = run(main);
