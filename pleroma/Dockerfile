FROM elixir:1.6-alpine

LABEL maintainer="Angristan https://github.com/Angristan/dockerfiles"

ENV UID=911 GID=911 \
    MIX_ENV=prod

ARG PLEROMA_VER=develop

RUN apk -U upgrade \
    && apk add --no-cache \
       build-base \
       git

RUN addgroup -g ${GID} pleroma \
    && adduser -h /pleroma -s /bin/sh -D -G pleroma -u ${UID} pleroma

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

USER pleroma
WORKDIR pleroma

RUN git clone -b develop https://git.pleroma.social/pleroma/pleroma.git /pleroma \
    && git checkout ${PLEROMA_VER}

COPY config/secret.exs /pleroma/config/prod.secret.exs

RUN mix local.rebar --force \
    && mix local.hex --force \
    && mix deps.get \
    && mix compile

RUN mkdir /pleroma/uploads
VOLUME /pleroma/uploads/

CMD ["mix", "phx.server"]