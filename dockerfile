# Estágio de construção (builder stage)
FROM node:20-alpine AS builder
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

EXPOSE 80
CMD ["npm" , "run" , "dev"]
