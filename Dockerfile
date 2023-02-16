FROM node:16.16


RUN npm i -g  @nestjs/cli @nestjs/typeorm typeorm mysql mysql2 --save
COPY package*.json ./
WORKDIR /api