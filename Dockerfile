# 使用Python 3.10的官方镜像
FROM python:3.10-slim

WORKDIR /usr/src/app

# 更新apt包列表并安装一些基本的依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    libbz2-dev \
    liblzma-dev \
    zlib1g-dev \
    libxml2-dev \
    libxslt1-dev \
    libcurl4-openssl-dev \
    libssl-dev

# 设置pip的缓存目录，避免每次都重新下载相同的包
ENV PIP_CACHE_DIR=/root/.cache/pip

# 升级pip以确保使用最新版本
RUN python -m pip install --upgrade pip \
    && pip install pysam==0.21.0 edlib==1.3.9 psutil==5.9.4 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && mkdir sniffles2 \
    && cd sniffles2 \
    && pip install sniffles

ENV PATH="/usr/src/app/sniffles2:${PATH}"

# 设置环境变量和命令入口
CMD ["bash"]
