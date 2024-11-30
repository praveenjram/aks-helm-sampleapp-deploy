From node:14-alpine3.15 AS node
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD ["node", "server.js"]