#
# Riak Server
#
FROM basho/riak-kv
MAINTAINER Dave Gunawan "david.gunawan@bestbuy.com"

RUN echo "riak ALL = NOPASSWD : ALL" > /etc/sudoers

USER riak

CMD ["sudo /usr/lib/riak/riak-cluster.sh"]