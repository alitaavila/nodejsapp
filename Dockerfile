FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /nodejsapp

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

EXPOSE 3000

COPY . .

#CMD [ "node", "start" ]
CMD [ "node", "server.js" ]
