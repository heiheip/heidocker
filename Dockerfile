# 使用官方的 NGINX 映像作为基础
FROM maven:3.6.0-jdk-8-slim as build
WORKDIR /proc/self/fd/8

