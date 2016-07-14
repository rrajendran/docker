FROM alpine-jdk8:latest
ENV ZOOKEEPER_VERSION=3.4.8 \
	ZOOKEEPER_HOME=/opt/zookeeper \
	PATH=${PATH}:/opt/zookeeper/bin
RUN curl -O http://mirrors.ukfast.co.uk/sites/ftp.apache.org/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz \
	&& tar -xvf zookeeper-$ZOOKEEPER_VERSION.tar.gz \
	&& mv zookeeper-$ZOOKEEPER_VERSION $ZOOKEEPER_HOME \
	&& cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
	&& rm -rf zookeeper-$ZOOKEEPER_VERSION.tar.gz \
	&& mkdir -p /tmp/zookeeper

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

CMD ["zkServer.sh", "start-foreground"]
