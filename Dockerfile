FROM docker:latest

RUN apk add --no-cache --update alpine-sdk bash nodejs npm yarn
RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["node"]
