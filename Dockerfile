FROM node

RUN npm install --global yarn

RUN mkdir -p /app
WORKDIR /app

COPY yarn.lock yarn.lock
COPY package.json package.json

RUN yarn install

ADD . /app

CMD bash
