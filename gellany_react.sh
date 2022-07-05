#!/bin/bash

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
node  -v
npm install -g yarn
yarn global add create-react-app
create-react-app my-app
cd my-app
npm start
