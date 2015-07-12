FROM java:8-jre

ENV KIBANA_HOME /opt/kibana
ENV KIBANA_ES_URL http://localhost:9200

# Download Kibana
RUN wget -O - https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz | tar xvz -C /opt && \
  mv /opt/kibana-4.1.1-linux-x64 ${KIBANA_HOME}

WORKDIR ${KIBANA_HOME}

EXPOSE 5601

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "bin/kibana -e ${KIBANA_ES_URL}"]