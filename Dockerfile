FROM node:16.20.1-alpine as node

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g @angular/cli@16.2.0

COPY . .

RUN ng build --configuration=production

FROM nginx:latest

COPY --from=node app/dist/app /usr/share/nginx/html