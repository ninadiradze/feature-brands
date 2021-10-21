FROM node:14
WORKDIR /var/www
COPY package*.json ./
COPY . .
