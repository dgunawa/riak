#
# Riak Server
#
FROM basho/riak-kv
MAINTAINER Dave Gunawan "david.gunawan@bestbuy.com"

RUN chown -R riak:riak /etc/riak

# Expose protocol buffers and HTTPS
EXPOSE 8087 8098

USER riak