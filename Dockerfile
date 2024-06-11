FROM cuhkhaosun/conda

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && conda install sniffles=2.0

ENV PATH="/app/sniffles2:${PATH}"


CMD ["bash"]

