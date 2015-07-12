#! /bin/bash

# Logstash doesn't support configuration via environment variables.
# Thus we dynamically add entries in /etc/hosts
echo "${ES_PORT_9200_TCP_ADDR} elasticsearch" >> /etc/hosts

# Start logstash
/opt/logstash/bin/logstash -f /etc/logstash/conf.d -l /var/log/logstash/logstash.log