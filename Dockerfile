FROM node:12.22.9
WORKDIR /nodejsapp
#COPY package.json .
#COPY . .
ADD . /nodejsapp
RUN npm install
EXPOSE 3000
# CMD npm start
#RUN npm install // gives the error when executing this step
#RUN npm install react-scripts@3.4.1 -g --silent

# start app
CMD ["npm", "start"]
