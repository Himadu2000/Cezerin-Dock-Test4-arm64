FROM node:21.7-alpine

RUN apk update && apk add git

WORKDIR /var/www

RUN git clone https://github.com/Cezerin2/Cezerin2.git

WORKDIR /var/www/Cezerin2

RUN git checkout 3765ef6

COPY package.json package.json

RUN yarn
RUN yarn build:store

EXPOSE 3000 3001

CMD [ "yarn", "start" ]
