FROM node:10-jessie
MAINTAINER Get IT Done Properly <docker@doneproperly.xyz>

RUN apt-get update && apt-get install -y \
    calibre \
 && rm -rf /var/lib/apt/lists/*

RUN npm -g install gitbook-cli

WORKDIR /book

ENTRYPOINT ["gitbook", "serve"]
EXPOSE 4000
