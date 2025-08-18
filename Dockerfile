# Base de Jupyter Notebook con Python
FROM jupyter/base-notebook:python-3.11.4

# Cambiar a root para instalar paquetes
USER root

# Instala wget y unzip
RUN apt-get update && apt-get install -y wget unzip


# volver a usuario por defecto
USER $NB_UID

# Añade AMPL al PATH
ENV PATH="/opt/ampl.linux64:${PATH}"

# Instala ipython kernel para Jupyter
RUN pip install --no-cache-dir ipykernel
RUN python -m pip install amplpy # Install amplpy
RUN python -m amplpy.modules install highs gurobi  # Install modules
