FROM alpine-jdk8:latest
ENV MAVEN_VERSION=3.3.9 \
	MAVEN_HOME=/opt/maven \
	PATH=${PATH}:/opt/maven/bin

RUN curl -O  http://mirror.catn.com/pub/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
	tar -xvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
	mv apache-maven-$MAVEN_VERSION $MAVEN_HOME && \
	rm -rf apache-maven-$MAVEN_VERSION-bin.tar.gz

CMD ["mvn","--version"]
