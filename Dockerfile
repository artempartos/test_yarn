FROM node

# RUN npm install --global yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN mkdir -p /app
WORKDIR /app

COPY yarn.lock yarn.lock
COPY package.json package.json

RUN $HOME/.yarn/bin/yarn install

ADD . /app

CMD bash
