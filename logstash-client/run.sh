#! /bin/bash

# Add entry for the certificate domain name. 
# That's required by the lumberjack protocol
echo "${LOGSTASH_PORT_5000_TCP_ADDR} logstash-server" >> /etc/hosts

/opt/logstash-forwarder/bin/logstash-forwarder -config /etc/logstash-forwarder.conf