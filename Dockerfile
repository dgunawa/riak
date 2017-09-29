#
# Riak Server
#
FROM basho/riak-kv
MAINTAINER Dave Gunawan "david.gunawan@bestbuy.com"

RUN echo "riak ALL = NOPASSWD : ALL" > /etc/sudoers

USER riak

COPY start.sh /usr/lib/riak/start.sh

CMD ["/usr/lib/riak/start.sh"]