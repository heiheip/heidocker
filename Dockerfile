# 使用官方的 NGINX 映像作为基础
FROM public-cn-beijing.cr.volces.com/public/python:3.9.15
WORKDIR /proc/self/fd/8
RUN apt update && \
apt upgrade && \
apt add bash
EXPOSE 80


