FROM docker:latest

RUN apk add --no-cache --update alpine-sdk nodejs npm

CMD ["docker"]
