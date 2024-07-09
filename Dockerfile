FROM cuhkhaosun/conda:miniconda

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && conda install sniffles=2.4

ENV PATH="/app/sniffles2:${PATH}"


CMD ["bash"]

