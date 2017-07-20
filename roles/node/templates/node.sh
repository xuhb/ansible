#!/bin/sh
ln -s /usr/local/node-v6.10.2-linux-x64/bin/node /usr/bin/node
ln -s /usr/local/node-v6.10.2-linux-x64/bin/npm /usr/bin/npm
rm -rf /usr/local/node-v6.10.2-linux-x64/bin/npm

ln -s /usr/local/node-v6.10.2-linux-x64/lib/node_modules/npm/bin/npm-cli.js /usr/local/node-v6.10.2-linux-x64/bin/npm


npm install pm2@latest -g
ln -s /usr/local/node-v6.10.2-linux-x64/bin/pm2 /usr/bin/pm2
