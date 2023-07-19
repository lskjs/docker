module.exports = ({ from }) =>
  `
FROM ${from}

RUN apk add --update bash gettext

CMD ["bash"]
`.trimStart();
