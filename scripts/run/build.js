#!/usr/bin/env node
const { run } = require('@lskjs/cli-utils');
const { execSync } = require('child_process');
const { images, buildDir } = require('../../config');
const fs = require('fs');

async function main() {
  execSync(`rm -rf ${buildDir}`);
  images.forEach(({ name, template, props: variants }) => {
    variants.forEach((props) => {
      const dockerfile = template(props);
      const { version } = props;
      const dirname = `${buildDir}/${name.replace('/', '_')}_${version}`;

      const echo = (cmds) => cmds.map((cmd) => [`echo ">>" ${cmd}`, cmd]).flat();

      const getReleaseCmds = (cmd, isPush = true) => [
        '## NOTE: Create multi arch builder first https://www.docker.com/blog/multi-arch-images/ ',
        ...echo(
          [
            `docker ${cmd} -t ${name}:${version} ${dirname}`,
            isPush ? `docker push ${name}:${version}` : null,
          ].filter(Boolean),
        ),
      ];
      execSync(`mkdir -p ${dirname}`);
      fs.writeFileSync(`${dirname}/Dockerfile`, dockerfile);
      fs.writeFileSync(`${dirname}/release.sh`, getReleaseCmds('build').join(' && \\\n'));
      fs.chmodSync(`${dirname}/release.sh`, 0o755);
      fs.writeFileSync(
        `${dirname}/release-m1.sh`,
        getReleaseCmds('buildx build --platform linux/amd64,linux/arm64 --push', false).join(
          ' && \\\n',
        ),
      );
      fs.chmodSync(`${dirname}/release-m1.sh`, 0o755);
    });
  });
}

module.exports = run(main);
