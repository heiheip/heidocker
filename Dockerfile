# 使用官方的 NGINX 映像作为基础
FROM public-cn-beijing.cr.volces.com/public/base:python-3.10.6

MAINTAINER douyincloud
WORKDIR /proc/self/fd/8
COPY ./ /opt/application

WORKDIR /opt/application
RUN chmod 777 run.sh
