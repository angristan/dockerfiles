FROM alpine:3.7

LABEL maintainer="Angristan https://github.com/Angristan/dockerfiles"
LABEL source="https://github.com/Angristan/dockerfiles/tree/master/searx"

ARG SEARX_VER=0.14.0

ENV UID=991 GID=991 \
    BASE_URL=False \
    IMAGE_PROXY=False

RUN apk -U upgrade \
 && apk add --no-cache -t build-dependencies \
    build-base \
    python-dev \
    libffi-dev \
    libxslt-dev \
    libxml2-dev \
    openssl-dev \
    tar \
    ca-certificates \
 && apk add --no-cache \
    su-exec \
    python \
    libxml2 \
    libxslt \
    openssl \
    tini \
    py2-pip \
 && mkdir /usr/local/searx && cd /usr/local/searx \
 && wget -qO- https://github.com/asciimoo/searx/archive/v${SEARX_VER}.tar.gz | tar xz --strip 1 \
 && pip install --no-cache -r requirements.txt \
 && sed -i "s/127.0.0.1/0.0.0.0/g" searx/settings.yml \
 && apk del build-dependencies

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

EXPOSE 8888

CMD ["run.sh"]
