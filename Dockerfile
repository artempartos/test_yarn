FROM node

RUN mkdir -p ~/app/node_modules

WORKDIR /home/foo/app

COPY yarn.lock yarn.lock
COPY package.json package.json

RUN adduser foo
RUN chown -R foo /home/foo
RUN chown -R foo /usr/local

USER foo

RUN npm install --global yarn



RUN ls -la ~/app

RUN yarn install

ADD . /home/foo/app

CMD bash
