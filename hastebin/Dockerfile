FROM node:6-alpine

LABEL maintainer="Stanislas Lange angristan@pm.me"

RUN apk -U upgrade && apk add git

RUN git clone https://github.com/seejohnrun/haste-server.git /app

WORKDIR /app

RUN npm install

COPY ./config.js /app/

EXPOSE 7777

CMD [ "node", "./server.js" ]