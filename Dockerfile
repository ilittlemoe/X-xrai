FROM debian:11

RUN apt update && \
    apt install caddy tor wget unzip && \
    wget -qO- https://raw.githubusercontent.com/ilittlemoe/X-xrai/main/etc/Xrai-linux-64.zip | unzip - && \
    chmod +x /xrai && \
    rm -rf /var/cache/apt/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
