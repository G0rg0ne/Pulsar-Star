# Dockerfile
FROM python:3.10.10

ARG PROJECT_NAME

# Create workdir and copy dependency files
RUN mkdir -p /workdir
COPY . /workdir

# Change shell to be able to easily activate virtualenv
SHELL ["/bin/bash", "-c"]
WORKDIR /workdir

# Install project
RUN apt-get update -qy \
    && apt-get install -y apt-utils gosu make
RUN pip install --upgrade pip virtualenv \
    && virtualenv .venv \
    && source .venv/bin/activate \
    && make install

# TensorBoard
EXPOSE 6006
# Jupyter Notebook
EXPOSE 8888