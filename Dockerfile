FROM node:8.9-alpine
WORKDIR /usr/src/app

LABEL maintainer ikrong <contact@ikrong.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

CMD tail -f /dev/null