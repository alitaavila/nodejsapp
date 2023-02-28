FROM node:12.22.9

#ENV NODE_ENV=production

WORKDIR /nodejsapp

ADD . /nodejsapp

#COPY ["package.json", "package-lock.json*", "./"]

#COPY . .

#RUN npm install --production
RUN npm install

EXPOSE 3000

CMD [ "node", "start" ]
