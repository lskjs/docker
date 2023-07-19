module.exports = {
  buildDir: 'dockerfiles',
  images: [
    {
      name: 'lskjs/dind',
      template: require('./templates/dind'),
      props: [{ from: 'docker:dind', version: 'latest' }],
    },
    {
      name: 'lskjs/kubectl',
      template: require('./templates/kubectl'),
      props: [
        { from: 'bitnami/kubectl:latest', version: 'latest' },
        { from: 'bitnami/kubectl:1.27', version: '1.27' },
      ],
    },
    {
      name: 'lskjs/rsync',
      template: require('./templates/rsync'),
      props: [
        { from: 'alpine:3.16.0', version: '3.16.0' },
        { from: 'alpine:latest', version: 'latest' },
      ],
    },
    {
      name: 'lskjs/node',
      template: require('./templates/node-alpine'),
      props: [
        // '15.8.0',
        { from: 'node:17.4.0-alpine', version: '17.4.0-alpine' },
        { from: 'node:18.10.0-alpine', version: '18.10.0-alpine' },
        { from: 'node:19.3.0-alpine', version: '19.3.0-alpine' },
        { from: 'node:19.5.0-alpine', version: '19.5.0-alpine' },
        { from: 'node:20.2.0-alpine', version: '20.2.0-alpine', pnpmVersion: 8 },
        { from: 'node:alpine', version: 'latest-alpine' },
      ],
    },
    {
      name: 'lskjs/node',
      template: require('./templates/node'),
      props: [
        // '15.8.0',
        // '17.4.0',
        { from: 'node:17.4.0', version: '17.4.0' },
        { from: 'node:18.10.0', version: '18.10.0' },
        { from: 'node:19.3.0', version: '19.3.0' },
        { from: 'node:19.5.0', version: '19.5.0' },
        { from: 'node:20.2.0', version: '20.2.0', pnpmVersion: 8 },
        { from: 'node:latest', version: 'latest' },
      ],
    },
    {
      name: 'lskjs/node',
      template: require('./templates/node-puppeteer'),
      props: [
        { from: `lskjs/node:18.10.0`, version: '18.10.0-puppeteer' },
        { from: `lskjs/node:19.3.0`, version: '19.3.0-puppeteer' },
        { from: `lskjs/node:19.5.0`, version: '19.5.0-puppeteer' },
        { from: `lskjs/node:20.2.0`, version: '20.2.0-puppeteer', pnpmVersion: 8 },
      ],
    },
    {
      name: 'lskjs/node',
      template: require('./templates/node-clickhouse'),
      props: [
        {
          from: `lskjs/node:17.4.0`,
          version: '17.4.0-clickhouse-20.8.2.3',
          clickhouseVersion: '20.8.2.3',
        },
        {
          from: `lskjs/node:19.5.0`,
          version: '19.5.0-clickhouse-20.8.2.3',
          clickhouseVersion: '20.8.2.3',
        },
        {
          from: `lskjs/node:19.5.0`,
          version: '19.5.0-clickhouse',
          clickhouseVersion: '20.8.2.3',
        },
        {
          from: `lskjs/node:20.2.0`,
          version: '20.2.0-clickhouse',
          clickhouseVersion: '20.8.2.3',
          pnpmVersion: 8,
        },
      ],
    },
    // {
    //   name: 'lskjs/puppeteer-nodejs',
    //   template: require('./templates/puppeteer-node'),
    //   props: [
    //     // '15.8.0', '17.4.0',
    //     { version: '18.10.0' },
    //     { version: '19.5.0' },
    //     { version: 'latest' },
    //   ],
    // },
    // {
    //   name: 'lskjs/puppeteer-node',
    //   template: require('./templates/puppeteer-node'),
    //   props: [
    //     // '15.8.0', '17.4.0',
    //     { version: '18.10.0' },
    //     { version: '19.3.0' },
    //     { version: '19.5.0' },
    //     { version: 'latest' },
    //   ],
    // },
  ],
};
