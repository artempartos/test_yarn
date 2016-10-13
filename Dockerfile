FROM node

RUN npm install --global yarn bower webpack
RUN mkdir -p ~/.yarn-cache/
RUN chown -R root:root ~/.yarn-cache/

RUN mkdir -p /app
WORKDIR /app

# COPY yarn.lock yarn.lock
COPY package.json package.json

RUN yarn install

ADD . /app

CMD bash
