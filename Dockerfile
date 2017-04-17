FROM alpine:latest

MAINTAINER sad@bankdata.dk

RUN apk update \
    && apk add squid=3.5.23-r0 \
    && apk add curl \
    && apk add perl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/
COPY configFiles/* /etc/squid/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
