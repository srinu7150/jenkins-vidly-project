#stage:1 build stage
FROM node:14.16.0-alpine3.13 AS build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

#stage:2 production stage
FROM nginx:1.12-alpine
COPY --from=build-stage /app/build /usr/share/nginx/html
COPY web.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]