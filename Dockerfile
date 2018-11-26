FROM node:lts
MAINTAINER Get IT Done Properly <docker@doneproperly.xyz>

RUN npm -g install gitbook-cli

WORKDIR /book

ENTRYPOINT ["gitbook", "serve"]
EXPOSE 4000
