FROM node:20-alpine

WORKDIR /app

COPY yarn.lock package.json ./

RUN npm install -G yarn

COPY Makefile ./

RUN yarn install

COPY . .