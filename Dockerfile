FROM node:16.20.1-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g @angular/cli@16.2.0

COPY . .

RUN ng build --configuration=production

FROM nginx:latest

COPY --from=build app/dist/aftas-angular /usr/share/nginx/html