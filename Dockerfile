FROM debian:11

RUN apt update
RUN apt install caddy tor wget unzip
RUN wget -qO- https://raw.githubusercontent.com/ilittlemoe/X-xrai/main/etc/Xrai-linux-64.zip
RUN unzip Xrai-linux-64.zip 
RUN chmod +x ./xrai
RUN rm -rf /var/cache/apt/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
