FROM alpine:edge

RUN apt update && \
    apt add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://raw.githubusercontent.com/ilittlemoe/X-xrai/main/etc/Xrai-linux-64.zip | busybox unzip - && \
    chmod +x /xrai && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
