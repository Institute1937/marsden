FROM node:8.2.1-alpine

COPY . /src
WORKDIR /src
RUN /usr/local/bin/npm install
CMD ["node", "server.js"]