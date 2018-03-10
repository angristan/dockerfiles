# Searx

[![](https://images.microbadger.com/badges/version/angristan/searx.svg)](https://microbadger.com/images/angristan/searx) [![](https://images.microbadger.com/badges/image/angristan/searx.svg)](https://microbadger.com/images/angristan/searx)

![](https://i.goopics.net/ls.png)

Based on [wonderfall/searx](https://github.com/Wonderfall/dockerfiles/tree/master/searx), which isn't maintained anymore.

## What is searx?
Searx is a metasearch engine, inspired by the seeks project.
It provides basic privacy by mixing your queries with searches on other platforms without storing search data. Queries are made using a POST request on every browser (except chrome*). Therefore they show up in neither our logs, nor your url history. In case of Chrome* users there is an exception, Searx uses the search bar to perform GET requests. Searx can be added to your browser's search bar; moreover, it can be set as the default search engine. 

## Features
- Based on Alpine Linux.
- Latest code from [asciimoo/searx](https://github.com/asciimoo/searx)
- A unique secret key is generated when booting the first time.

## Build-time variables
- **VERSION** : Searx version

## Environment variables
- **IMAGE_PROXY** : enables images proxying *(default : False)*
- **BASE_URL** : http://domain.tld *(default : False)*

## Usage

```docker
docker run --name searx -d -p 80:8888 -e IMAGE_PROXY=true -e BASE_URL=https://searx.domain.tld angristan/searx:latest
```

A `docker-compose.yml` example:

```yml
version: '3'

services:
  searx:
    image: angristan/searx:latest
    restart: always
    environment:
      - IMAGE_PROXY=true
      - BASE_URL=https://searx.angristan.xyz
    ports:
      - "80:8888"
    restart: always
```