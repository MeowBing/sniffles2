FROM cuhkhaosun/base

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && pip install sniffles

ENV PATH="/app/sniffles2:${PATH}"


CMD ["bash"]

