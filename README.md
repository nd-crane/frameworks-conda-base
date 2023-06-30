# Trusted AI Dev Containers + Codespaces

This is a template repository that can be used to start with a minimal Dev Container setup that provides conda and mamba for setting up Python environments. It extends the [Data Science Jupyter Notebooks (Python)](https://github.com/minsa110/devcontainer-jupyter-nb)and [conda-devcontainer-demo](https://github.com/crazy4pi314/conda-devcontainer-demo) template by incorporating tools like DVC and nbdev, with optional support for spdx-tools and huggingface_hub.  This repository contains a sample Conda environment file (`environment.yml`), demo Jupyter notebook, and Dev Container configuration files that describe how a containerized development can be built for the repo. These configuration files work for both local Dev Containers as well as Codespaces, a GitHub-hosted cloud environment.

The Docker setup for the Dev Container starts with a miniconda image that then will install whatever conda environment file you have at the root of the repo. There are some additional configuration options in the comments of the Docker and devcontainer.json that have some examples of other steps you may want to add to your Dev Container, like what VS Code extensions to install when the container is launched.

## How to use this template

0. Create a repo of your own by creating a repo from this template to your GitHub account.

### Work on your computer (requires Docker and VS Code installed)

1. Clone your newly created repo to your local machine and open it in VS Code.
2. Install the Remote Development extension (if you don't already have it).
3. Open the command pallet and run Dev Containers: Reopen in Container. Alternately, you can click on the left-most button on the bottom status bar (little arrows facing each other) and choose Reopen in Container.
4. This will take a few minutes to download the Docker image and build the rest of the container.
5. You should now have a VS Code window with your clone of the template repo open, running in a local Dev Container.

### Work on your computer (requires local installation of Conda)

1. Clone your newly created repo to your local machine.
2. Navigate to the root directory of your project in a terminal.
3. Run the setup script with the command `bash setup.sh`. This will create the conda environment and install the necessary tools.
4. Activate the new conda environment using the command `conda activate dev_env` (or the name specified in your `environment.yml` file).
5. You can now start working with the project in this environment.

### Start working instantly on Codespaces

1. From your clone of the template use the green Code button to create a codespace. If you click the triple dots you can customize the type of machine you want to be running your Codespace. You don't need to use any more than the 2-core for the template, but depending on what you use for your environments, you may need more ram/disc space.
2. The Codespace will take a few moments to start, which can be shortened by turning on Codespaces Pre-Builds on your repo*.
3. You should now have a VS Code window in your browser with your clone of the template repo open, running in a Codespace.

* This can get expensive so make sure to check the settings when enabling this feature.

## Ways to customize the template

* Change the container `name` in devcontainer.json.
* Change the default conda env name by changing the first line of environment.yml and change python.defaultInterpreterPath in devcontainer.json.

## Tools Included in the Template

This template includes a variety of tools that support the development of Trusted AI systems. Trusted AI refers to AI systems that are transparent, explainable, fair, and robust. Here's an overview of the major tools included and how they contribute to Trusted AI:

### Quarto

[Quarto](https://quarto.org/) is a powerful tool for creating computational documents using a variety of languages such as Python, R, and Julia. Quarto documents provide a transparent way of sharing your data analysis, which includes code, explanatory text, and visualizations, fostering trust in your AI workflows.

### NBdev

[NBdev](https://nbdev.fast.ai/) is a library that allows you to develop a library in Jupyter Notebooks, putting all your code, tests, and documentation in one place. By making it easy to keep your code and documentation together, NBdev promotes transparency and reproducibility, key aspects of Trusted AI. NBdev is specifically configured to use Quarto in this template.

### DVC

[Data Version Control (DVC)](https://dvc.org/) is a version control system for machine learning projects. By tracking changes in your data and models, DVC makes your experiments reproducible, which is a fundamental part of creating AI systems that can be trusted.

### Hugging Face Hub (Optional)

[Hugging Face Hub](https://huggingface.co/) is a platform for sharing and collaborating on transformers models. A key feature of the Hugging Face Hub is the support for Model and Dataset cards, which are markdown files that accompany datasets and models and provide a description of their content, use-cases, creation/annotation process, biases, limitations and ethical considerations. These cards promote transparency and understanding, making it easier for users to find the right models and datasets for their needs and use them responsibly. Thus, the hub contributes to the development of Trusted AI by enhancing transparency, reproducibility, and responsible use of AI models and data.

### SPDX SBoM (Optional)

[Software Package Data Exchange (SPDX)](https://spdx.dev/) is a standard for communicating the components, licenses, and copyrights associated with a software package. By providing a clear list of components and their licenses, SPDX contributes to transparency and accountability in AI systems. This template includes support for SPDX version 3, which includes new support for AI.

These tools are designed to be used together to build Trusted AI systems. However, you can modify them to suit your needs. Instructions for how to use these tools are included in the respective sections of this README.



## Directory Structure

The project has the following directory structure:

- `LICENSE`: Contains the license for the project.
- `README.md`: This file, contains information about the project and instructions on how to use it.
- `data`: Directory to store data files used or generated by the project.
- `environment.yml`: A file that specifies the dependencies for the project. This is used by conda and mamba to set up the Python environment.
- `notebooks`: Contains Jupyter notebooks used in the project. Currently includes a demo notebook (`frameworks.ipynb`).
- `setup-local.sh`: A script for setting up the project on your local machine if you're not using Docker and VS Code's Remote Development extension.

## Original Readme

# Data Science Jupyter Notebooks (Python)

TODO: EDIT

## Summary

*Data science and Jupyter Notebooks development with Miniconda in Python 3. Installs dependencies from your environment.yml file, and the Python and Jupyter extensions.*

| Metadata | Value |  
|----------|-------|
| *Categories* | Core, Languages |
| *Image type* | Dockerfile |
| *Published image* | mcr.microsoft.com/devcontainers/...<jupyter-nb> |
| *Published image architecture(s)* | x86-64 |
| *Container host OS support* | Linux, macOS, Windows |
| *Container OS* | Debian |
| *Languages, platforms* | Python, Jupyter, Miniconda |

## Using this image

### Configuration

You can directly reference pre-built versions of `.devcontainer/Dockerfile` by using the `image` property in `.devcontainer/devcontainer.json` or updating the `FROM` statement in your own `Dockerfile` to the following. An example `Dockerfile` is included in this repository.

- `mcr.microsoft.com/devcontainers/...`

Refer to [this guide](https://containers.dev/guide/dockerfile) for more details.

Alternatively, you can use the contents of `Dockerfile` to fully customize your container's contents or to build it for a container host architecture not supported by the image.

### Using Conda
This dev container and its associated image includes [the `conda` package manager](https://aka.ms/vscode-remote/conda/about). Additional packages installed using Conda will be downloaded from Anaconda or another repository if you configure one. To reconfigure Conda in this container to access an alternative repository, please see information on [configuring Conda channels here](https://aka.ms/vscode-remote/conda/channel-setup).

Access to the Anaconda repository is covered by the [Anaconda Terms of Service](https://aka.ms/vscode-remote/conda/terms), which may require some organizations to obtain a commercial license from Anaconda. **However**, when this dev container or its associated image is used with GitHub Codespaces or GitHub Actions, **all users are permitted** to use the Anaconda Repository through the service, including organizations normally required by Anaconda to obtain a paid license for commercial activities. Note that third-party packages may be licensed by their publishers in ways that impact your intellectual property, and are used at your own risk.

#### Installing Node.js

Given JavaScript front-end web client code written for use in conjunction with a Python back-end often requires the use of Node.js-based utilities to build, you can use a [Node feature](https://github.com/devcontainers/features/tree/main/src/node) to install any version of Node by adding the following to `devcontainer.json`:

```json
{
  "features": {
    "ghcr.io/devcontainers/features/node:1": {
      "version": "latest"
    }
  }
}
```

#### Installing or updating Python utilities

This container installs all Python development utilities using [pipx](https://pipxproject.github.io/pipx/) to avoid impacting the global Python environment. You can use this same utility add additional utilities in an isolated environment. For example:

```bash
pipx install prospector
```

Note that if you change the version of Python from the default, you'll need to run a few commands to update the utilities and `pipx`. More on that next.

#### Installing a different version of Python

As covered in the [user FAQ](https://docs.anaconda.com/anaconda/user-guide/faq) for Anaconda, you can install different versions of Python than the one in this image by running the following from a terminal:

```bash
conda install python=3.6
pip install --no-cache-dir pipx
pipx uninstall pipx
pipx reinstall-all
```

Or in a Dockerfile:

```Dockerfile
RUN conda install -y python=3.6 \
    && pip install --no-cache-dir pipx \
    && pipx uninstall pipx \
    && pipx reinstall-all
```

See the [pipx documentation](https://pipxproject.github.io/pipx/docs/) for additional information.

#### [Optional] Using the forwardPorts property

By default, frameworks like Flask only listens to localhost inside the container. As a result, we recommend using the `forwardPorts` property (available in v0.98.0+) to make these ports available locally.

```json
"forwardPorts": [5000]
```

The `appPort` property [publishes](https://docs.docker.com/config/containers/container-networking/#published-ports) rather than forwards the port, so applications need to listen to `*` or `0.0.0.0` for the application to be accessible externally. This conflicts with the defaults of some Python frameworks, but fortunately the `forwardPorts` property does not have this limitation.

### [Optional] Adding the contents of environment.yml to the image

For convenience, this image will automatically install dependencies from the `environment.yml` file in the parent folder when the container is built. You can change this behavior by altering this line in the `Dockerfile`:

```Dockerfile
RUN if [ -f "/tmp/conda-tmp/environment.yml" ]; then /opt/conda/bin/conda env update -n base -f /tmp/conda-tmp/environment.yml; fi \
    && rm -rf /tmp/conda-tmp
```

### [Optional] Adding the contents of reqeuirements.txt to the image

This image is intended to be used with conda environments, but if your repo contains `requirements.txt`, you can pip install additional dependencies from the `requirements.txt` file in the `postcreate.sh`:

```sh
pip install -r requirements.txt
```

## License

Copyright (c) Microsoft Corporation. All rights reserved.

Licensed under the MIT License. See [LICENSE](https://github.com/devcontainers/images/blob/main/LICENSE)