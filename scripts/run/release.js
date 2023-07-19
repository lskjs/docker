#!/usr/bin/env node
const { run } = require('@lskjs/cli-utils');
const { execSync } = require('child_process');
const { mapSeries } = require('fishbird');
const { buildDir } = require('../../config');
const fs = require('fs');
const isM1 = require('os').arch() === 'arm64' && require('os').cpus()[0].model.includes('Apple M');

async function main({ args }) {
  const isRelease = args.includes('--release');

  const getCmds = (cmd) =>
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
        const imageName = group ? `${group}/${name}:${version}` : `${name}:${version}`;
        return [`docker ${cmd} -t ${imageName} ${buildDir}/${dirname}`, `docker push ${imageName}`];
      })
      .flat();
  if (isRelease) {
    const cmds = getCmds(isM1 ? 'buildx build' : 'build');
    await mapSeries(cmds, (cmd) => execSync(cmd));
  } else {
    const cmds = getCmds('build');
    cmds.push('echo FINISH');
    fs.writeFileSync('./dockerfiles/release.sh', cmds.join(' && \\\n'));

    const cmdsx = getCmds('buildx build');
    cmdsx.push('echo FINISH');
    fs.writeFileSync('./dockerfiles/releasex.sh', cmdsx.join(' && \\\n'));
  }
}

module.exports = run(main);
