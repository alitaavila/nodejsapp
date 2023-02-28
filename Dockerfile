FROM node:12.22.9
ENV NODE_ENV=production

WORKDIR /nodejsapp

ADD . /nodejsapp

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

EXPOSE 3000

COPY . .

#CMD [ "node", "start" ]
CMD [ "node", "server.js" ]
