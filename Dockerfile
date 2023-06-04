ARG VER
FROM node:$VER-alpine
LABEL maintainer ikrong <contact@ikrong.com>
RUN apk --update add jq git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
