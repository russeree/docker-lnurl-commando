# LNURL-Commando Alpine Container - Portland.Hodl
FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm ci --omit=dev
