# baseimage is node.js 12.18.2
FROM node:12.18.2

# apt-get update and install
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
    sudo \
    nano

# create app directory
WORKDIR /usr/src/app

# copy package.json and package-lock.json
COPY package*.json ./

# RUN npm install --only=production
RUN sudo npm install 

# set environment variable path
ENV PATH $PATH:/usr/src/app/node_modules/.bin