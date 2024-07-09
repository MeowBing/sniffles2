FROM cuhkhaosun/conda:miniconda

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && conda install bioconda/label/main::sniffles

ENV PATH="/app/sniffles2:${PATH}"

CMD ["bash"]
