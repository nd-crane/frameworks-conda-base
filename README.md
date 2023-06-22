# Trusted AI Dev Containers + Codespaces

This is a template repository that can be used to start with a minimal Dev Container setup that provides conda and mamba for setting up Python environments. This repository contains a sample Conda environment file (`environment.yml`), demo Jupyter notebook, and Dev Container configuration files that describe how a containerized development can be built for the repo. These configuration files work for both local Dev Containers as well as Codespaces, a GitHub-hosted cloud environment.

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
