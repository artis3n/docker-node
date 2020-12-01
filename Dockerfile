FROM docker:latest

RUN apk add --no-cache --update alpine-sdk nodejs npm
RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node

CMD ["docker"]
