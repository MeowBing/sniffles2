FROM cuhkhaosun/conda:miniconda

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && conda install bioconda::sniffles

ENV PATH="/app/sniffles2:${PATH}"


CMD ["bash"]

