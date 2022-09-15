FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates wget unzip && \
    apk add --no-cache  openssl curl openrc && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh    
