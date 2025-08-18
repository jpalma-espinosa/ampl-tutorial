# Base de Jupyter Notebook con Python
FROM jupyter/base-notebook:python-3.11.4

# Instala wget y unzip
RUN apt-get update && apt-get install -y wget unzip

# Descarga AMPL Student Edition (Linux 64-bit)
RUN wget https://ampl.com/dl/ampl.linux64.tgz -O /tmp/ampl.tgz && \
    tar -xvzf /tmp/ampl.tgz -C /opt && \
    rm /tmp/ampl.tgz

# Añade AMPL al PATH
ENV PATH="/opt/ampl.linux64:${PATH}"

# Instala ipython kernel para Jupyter
RUN pip install --no-cache-dir ipykernel
