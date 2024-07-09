FROM cuhkhaosun/base

WORKDIR /app

# 安装必要的构建工具和依赖项
RUN apt-get update && \
    apt-get install -y build-essential

# 创建目录并安装 Sniffles
RUN mkdir sniffles2 \
    && cd sniffles2 \
    && pip install sniffles

ENV PATH="/app/sniffles2:${PATH}"

CMD ["bash"]
