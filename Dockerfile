FROM node:16 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./ ./

RUN npm run build

FROM node:16-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY ./ ./

CMD ["npm", "run", "start"]
