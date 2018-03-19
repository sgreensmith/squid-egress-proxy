FROM sameersbn/squid:3.3.8-23

COPY squid.conf-default /etc/squid3/squid.conf

EXPOSE 3128

CMD squid3 -z8

CMD squid3

