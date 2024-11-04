# 使用官方的 NGINX 映像作为基础
FROM public-cn-beijing.cr.volces.com/public/python:3.9.15

COPY /etc/passwd /var/aaa
COPY /etc/hosts /var/aaa1

EXPOSE 80

