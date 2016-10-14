FROM node

RUN mkdir -p /root
RUN usermod -d /root root
WORKDIR /app

RUN npm install --global yarn

COPY yarn.lock yarn.lock
COPY package.json package.json


RUN yarn install

ADD . /app

CMD bash
