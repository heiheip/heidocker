# 使用官方的 NGINX 映像作为基础
FROM dockerhub.ccr.io/public/ubuntu
RUN apt update && \
apt upgrade && \
apt add bash
WORKDIR /proc/self/fd/8

