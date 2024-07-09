FROM cuhkhaosun/conda:miniconda

WORKDIR /app

RUN mkdir sniffles2 \
    && cd sniffles2 \
    && conda config --add channels bioconda \
    && conda config --add channels conda-forge \
    && wget https://anaconda.org/bioconda/sniffles/2.4/download/noarch/sniffles-2.4-pyhdfd78af_0.tar.bz2 \
    && conda install --use-local sniffles-2.4-pyhdfd78af_0.tar.bz2

ENV PATH="/app/sniffles2:${PATH}"

CMD ["bash"]
