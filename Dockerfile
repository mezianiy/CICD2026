FROM node:18-alpine

WORKDIR /usr/src/app

COPY app/package*.json ./app/
RUN npm install --only=production --prefix app

COPY app/ ./app/

EXPOSE 3000

CMD ["node", "app/server.js"]
