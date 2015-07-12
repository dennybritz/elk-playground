Thsi repository uses Docker to set up a sample environment of [Elasticsearch](https://www.elastic.co/products/elasticsearch), [Kibana](https://www.elastic.co/products/kibana) and [Logstash](https://www.elastic.co/products/logstash), also known as the ELK Stack. It runs one container for each of ElasticSearch, Kibana and Logstash. It includes a logstash client image that sends syslogd data to the Logstash server. You can scale up the number of clients using `docker-compose scale`. The setup is inspired by an excellent [ELK guide for DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-4-on-ubuntu-14-04).

Start the services in the background:

```
docker-compose up -d
```

You should now be able to visit to visit the Kibana Dashboard at <YOUR_DOCKER_UP>:5601. To scale up the number of clients, simply do:


```
docker-compose scale client=4
```