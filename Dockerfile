#
# Riak Server
#
FROM basho/riak-kv
MAINTAINER Dave Gunawan "david.gunawan@bestbuy.com"

RUN mkdir /var/lib/riak2
RUN useradd --no-log-init -d /var/lib/riak2 -u 1000050000 -s /bin/bash -c "Riak start user" -g 105 riak2
RUN chown -R riak2:riak /var/lib/riak2
RUN echo "riak2 ALL = NOPASSWD : ALL" > /etc/sudoers

USER riak2

COPY start.sh /var/lib/riak2/start.sh

CMD ["/var/lib/riak2/start.sh"]