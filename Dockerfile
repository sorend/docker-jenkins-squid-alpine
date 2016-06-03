FROM alpine:3.4

MAINTAINER simon.perkins@gmail.com

RUN apk update \
    && apk add squid=3.5.19-r0 \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/start-squid.sh

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
