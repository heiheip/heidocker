
#根据Python的版本选择抖音云语言基础镜像
FROM public-cn-beijing.cr.volces.com/public/python:uwsgi-python3.9

# 指定构建过程中的工作目录
WORKDIR /opt/application
# 将当前目录(dockerfile所在目录)下所有文件都拷贝到工作目录下（.dockerignore中文件除外)
COPY . /opt/application/
COPY .. /opt/application/
USER root

# 利用 pip 安装依赖
RUN pip install --upgrade pip && pip install -r /opt/application/requirements.txt -i https://mirrors.ivolces.com/pypi/simple/ --trusted-host mirrors.ivolces.com

# 写入run.sh
RUN echo '#!/usr/bin/env bash\n\
uwsgi --ini /opt/application/uwsgi.ini' > /opt/application/run.sh
RUN chmod a+x /opt/application/run.sh

EXPOSE 8000
