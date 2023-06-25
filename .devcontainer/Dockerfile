# FROM https://github.com/devcontainers/templates/tree/main/src/miniconda
FROM mcr.microsoft.com/devcontainers/miniconda:0-3

# Add build argument for enabling Jupyter Lab
ARG ENABLE_JUPYTERLAB="false"

# Copy environment.yml (if found) to a temp location so we update the environment. Also
# copy "noop.txt" so the COPY instruction does not fail if no environment.yml exists.
RUN conda install -n base -c conda-forge mamba
COPY environment.yml* .devcontainer/noop.txt /tmp/conda-tmp/
RUN if [ -f "/tmp/conda-tmp/environment.yml" ]; then umask 0002 && /opt/conda/bin/mamba env create -f /tmp/conda-tmp/environment.yml; fi \
    && if [ "$ENABLE_JUPYTERLAB" = "true" ]; then /opt/conda/bin/conda install -c conda-forge jupyterlab; fi \
    && rm -rf /tmp/conda-tmp

# Install DVC as a pipx tool
RUN pipx install dvc

# Install nbdev as a dvc tool
RUN pipx install nbdev

# [Optional] Uncomment to install SPDX tools for SBoM generation
# See https://github.com/spdx/tools-python
# RUN pipx install spdx-tools

# [Optional] Uncomment to install HuggingFace model card support
# See https://huggingface.co/docs/huggingface_hub/quick-start
# RUN pipx install huggingface_hub

# [Optional] Uncomment to install a different version of Python than the default
# RUN conda install -y python=3.6 \
#     && pip install --no-cache-dir pipx \
#     && pipx reinstall-all

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>