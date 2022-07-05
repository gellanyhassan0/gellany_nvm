#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node
node  -v
npm install -g yarn
yarn global add create-react-app
create-react-app my-app
