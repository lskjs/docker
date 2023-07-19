module.exports = ({ from }) =>
  `
FROM ${from}

RUN apk add --no-cache \\
  openssh-client \\
  rsync \\
  ca-certificates \\
  bash

`.trimStart();
