FROM rameshr/alpine-jdk8:latest

ENV TOMCAT_MAJOR=8 \
    TOMCAT_VERSION=8.5.20 \
    TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
    CATALINA_OUT=/dev/null \
    PATH=$PATH:$CATALINA_HOME/bin

ADD docker-entrypoint.sh /
ADD tomcat-users.xml /

RUN apk upgrade --update && \
    apk add --update  --no-cache --virtual .fetch-dep ca-certificates openssl curl && \
    curl -jksSL -o /tmp/apache-tomcat.tar.gz http://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    gunzip /tmp/apache-tomcat.tar.gz && \
    tar -C /opt -xf /tmp/apache-tomcat.tar && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME} && \
    mv tomcat-users.xml ${CATALINA_HOME}/conf && \
    rm -rf /tmp/* ${CATALINA_HOME}/webapps/docs ${CATALINA_HOME}/webapps/examples /var/cache/apk/*

VOLUME ["/logs"]
EXPOSE 8080

ENTRYPOINT ["sh","./docker-entrypoint.sh"]