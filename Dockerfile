FROM continuumio/miniconda3:23.3.1-0


RUN conda install mamba -n base -c conda-forge
COPY environment.yml /
RUN mamba env create -f /environment.yml
COPY docker-entrypoint.sh /

ENV PATH /opt/conda/envs/virreport/bin:$PATH

# ENTRYPOINT [ "/docker-entrypoint.sh" ]
