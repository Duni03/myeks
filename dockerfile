# base image
FROM node:14.17.6-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the app code
COPY . .

EXPOSE 3000

# build the app
RUN npm run build

# start the app
CMD [ "npm", "start" ]
