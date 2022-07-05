#!/bin/bash

export NVM_DIR="$HOME/.nvm" && (
    git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
  ) && \. "$NVM_DIR/nvm.sh"
  
nvm install node
node  -v
npm install -g yarn
yarn global add create-react-app
create-react-app my-app
cd my-app
npm start
