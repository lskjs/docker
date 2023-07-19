/**
 * NOTE: Based on
 * https://github.com/bitnami/containers/blob/main/bitnami/kubectl/1.27/debian-11/Dockerfile
 */

module.exports = ({ from }) =>
  `
FROM ${from}

USER root
RUN apt update && apt install -y gettext

USER 1001
CMD ["bash"]
`.trimStart();
