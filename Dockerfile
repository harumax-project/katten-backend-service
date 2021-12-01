FROM node:16-alpine

ENV NODE_ENV=production
ENV PORT=8080

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY ./ ./

RUN npm run build

CMD ["npm", "run", "start"]
