build
=====
docker build -t alpine-tomcat:latest .

run
====
docker run -d -p 8080:8080 --name tomcat alpine-tomcat:latest

