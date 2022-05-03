FROM node:18-alpine

COPY . /resume
WORKDIR /resume

RUN npm ci

ENTRYPOINT ["node_modules/.bin/resume"]
