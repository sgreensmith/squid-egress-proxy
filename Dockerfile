FROM sameersbn/squid:3.3.8-23

COPY squid3.conf-default /etc/squid3/squid.conf
COPY check_url.sh /
COPY url_whitelist.txt /

EXPOSE 3128

RUN apt-get update && apt-get install -y curl vim
RUN squid3 -z

ENV https_proxy=172.17.0.2:3128

CMD squid3

