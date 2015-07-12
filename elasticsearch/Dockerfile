FROM java:8-jre

ENV ES_CONF_DIR /etc/elasticsearch
ENV ES_DATA_DIR /var/lib/elasticsearch
ENV ES_HOME /usr/share/elasticsearch
ENV ES_LOG_DIR /var/log/elasticsearch
ENV ES_WOKR_DIR /tmp/elasticsearch

# Download and install Elasticsearch
RUN wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.deb && \
  dpkg -i elasticsearch-1.6.0.deb && \
  rm elasticsearch-1.6.0.deb

VOLUME /etc/elasticsearch
VOLUME /var/lib/elasticsearch

EXPOSE 9200
EXPOSE 9300

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "${ES_HOME}/bin/elasticsearch --default.config=${ES_CONF_DIR}/elasticsearch.yml --default.path.home=${ES_HOME} --default.path.logs=${ES_LOG_DIR} --default.path.data=${ES_DATA_DIR} --default.path.work=${ES_WORK_DIR} --default.path.conf=${ES_CONF_DIR}"]