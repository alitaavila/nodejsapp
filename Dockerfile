FROM node
WORKDIR /appnodejs
COPY package.json .
COPY . .
# ADD . /appnodejs
#RUN npm install
EXPOSE 3000
# CMD npm start
RUN npm install // gives the error when executing this step
RUN npm install react-scripts@3.4.1 -g --silent

# start app
CMD ["npm", "start"]
