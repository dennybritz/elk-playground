FROM java:8-jre

ENV LOGSTASH_HOSTNAME logstash-server

# Install dependencies
RUN apt-get update && \
    apt-get install -y logrotate

# Download and install Logstash
RUN wget https://download.elastic.co/logstash/logstash/packages/debian/logstash_1.5.2-1_all.deb && \
  dpkg -i logstash_1.5.2-1_all.deb && \
  rm logstash_1.5.2-1_all.deb

# Generate certificates
RUN mkdir -p /etc/pki/tls/certs /etc/pki/tls/private
RUN openssl req -subj "/CN=${LOGSTASH_HOSTNAME}/" -x509 -days 3650 -batch -nodes -newkey rsa:2048 -keyout /etc/pki/tls/private/logstash-forwarder.key -out /etc/pki/tls/certs/logstash-forwarder.crt

VOLUME /etc/pki/tls/certs
VOLUME /etc/logstash/conf.d

COPY ./run.sh /opt/run.sh
CMD ["/opt/run.sh"]