FROM alpine:edge

RUN apk update
RUN apk add --no-cache ca-certificates caddy tor wget unzip
RUN wget -qO- https://raw.githubusercontent.com/ilittlemoe/X-xrai/main/etc/Xrai-linux-64.zip
RUN unzip Xrai-linux-64.zip 
RUN chmod +x ./xrai
RUN rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
