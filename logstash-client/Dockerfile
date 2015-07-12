FROM ubuntu:14.10

RUN apt-get install -y wget && \
  apt-get clean

RUN wget https://download.elastic.co/logstash-forwarder/binaries/logstash-forwarder_0.4.0_amd64.deb && \
  dpkg -i logstash-forwarder_0.4.0_amd64.deb && \
  rm logstash-forwarder_0.4.0_amd64.deb

# Start the syslogd daemon. We use that as a sample input to logstash.
RUN service rsyslog start

COPY ./run.sh /opt/run.sh
CMD ["/opt/run.sh"]