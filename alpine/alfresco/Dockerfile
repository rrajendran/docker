FROM rameshr/tomcat:latest

ENV INMEMORY_VERSION=1.1.0
ENV CONTEXT_NAME=alfresco

COPY alfresco.war /opt/tomcat/webapps/
ADD types.xml /opt/tomcat/lib/
VOLUME /opt/tomcat/lib
RUN jar -xvf /opt/tomcat/webapps/${CONTEXT_NAME}.war&& \
    chmod 640 /opt/tomcat/lib/types.xml

#RUN wget -O  /tmp/${CONTEXT_NAME}.war https://repository.apache.org/com.capella.vault.service/local/repositories/releases/content/org/apache/chemistry/opencmis/chemistry-opencmis-server-inmemory/${INMEMORY_VERSION}/chemistry-opencmis-server-inmemory-${INMEMORY_VERSION}.war && \
 #   cp /tmp/${CONTEXT_NAME}.war /opt/tomcat/webapps/ && \
  #  jar -xvf /opt/tomcat/webapps/${CONTEXT_NAME}.war && \
   # chmod 640 /opt/tomcat/lib/types.xml && \
    #rm -rf /tmp/${CONTEXT_NAME}.war

