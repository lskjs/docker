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
      const dirname = `${buildDir}/${name.replace('/', '_')}_${props.version}`;
      execSync(`mkdir -p ${dirname}`);
      fs.writeFileSync(`${dirname}/Dockerfile`, dockerfile);
    });
  });
}

module.exports = run(main);
