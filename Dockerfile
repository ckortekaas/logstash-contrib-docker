FROM pblittle/docker-logstash
MAINTAINER Christiaan Kortekaas <mrangryfish@gmail.com>

# Download version 1.4.2 of logstash contrib
RUN cd /tmp && \
    wget http://download.elasticsearch.org/logstash/logstash/logstash-contrib-1.4.2.tar.gz && \
    tar -xzvf ./logstash-contrib-1.4.2.tar.gz && \
    mv ./logstash-contrib-1.4.2/* /opt/ && \
    rmdir ./logstash-contrib-1.4.2  && \
    rm ./logstash-contrib-1.4.2.tar.gz
