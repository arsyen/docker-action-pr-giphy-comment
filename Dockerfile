FROM alpine:latest

RUN apk update && apk add --no-cache curl jq

COPY entrypoint.sh /entrypoint.sh

RUN cmd chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]