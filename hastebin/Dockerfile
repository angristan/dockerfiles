FROM node:6-alpine

LABEL maintainer="Stanislas Lange angristan@pm.me"

ENV UID=4242 GID=4242

RUN apk -U upgrade \
    && apk add git su-exec \
    && git clone https://github.com/seejohnrun/haste-server.git /app

WORKDIR /app

RUN npm install

COPY rootfs /

RUN chmod +x /usr/local/bin/run.sh

EXPOSE 7777

CMD ["run.sh"]