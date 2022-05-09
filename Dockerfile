FROM node:18.1.0-slim

LABEL org.opencontainers.image.source=https://github.com/maartenpaauw/resume

RUN apt update && apt install -y chromium
RUN npm install -g resume-cli@3.0.7

ENV RESUME_PUPPETEER_NO_SANDBOX=1

WORKDIR /resume

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install --production

ENTRYPOINT ["resume"]
