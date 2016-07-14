build
=====
docker build -t alpine-zookeeper:latest .

run
====
docker run -itd -p 2181:2181 --name zookeeper alpine-zookeeper:latest

