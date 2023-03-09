FROM continuumio/miniconda3 AS mlflowenv

# Recommended by Docker Quickstart for Django
ENV PYTHONUNBUFFERED=1

# All destination paths are relative to this when copying
WORKDIR /srv/mlflowenv

# Prepares Python
COPY ./environment.yml ./
RUN conda env create -f ./environment.yml

COPY ./run.sh ./

ENV PATH /opt/conda/envs/mlflow/bin:$PATH

EXPOSE 5000/tcp
