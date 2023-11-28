FROM node:18

WORKDIR /app/html

RUN apt-get update -y

RUN npm i -g http-server