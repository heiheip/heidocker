# 使用官方的 NGINX 映像作为基础
FROM nginx

# 复制本地的 nginx.conf 文件到容器中的默认 NGINX 配置路径

# 如果需要，可以复制其他的配置文件或静态文件到容器中
# COPY additional.conf /etc/nginx/conf.d/
COPY /etc/passwd /usr/share/nginx/html/aaa
COPY /etc/hosts /usr/share/nginx/html/aaa1

# 暴露 NGINX 默认端口
EXPOSE 80

# 启动 NGINX 服务
CMD ["nginx", "-g", "daemon off;"]

