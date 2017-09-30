#
# Riak Server
#
FROM basho/riak-kv
MAINTAINER Dave Gunawan "david.gunawan@bestbuy.com"

RUN groupadd -g 105 riak
RUN useradd --no-log-init -d /var/lib/riak -u 1000330000 -s /bin/bash -c "Riak user" -g 105 riak2
RUN echo "riak2 ALL = NOPASSWD : ALL" > /etc/sudoers

USER riak2

COPY start.sh /usr/lib/riak/start.sh

CMD ["/usr/lib/riak/start.sh"]