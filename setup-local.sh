#!/bin/bash

# Create a conda environment from the environment.yml file
echo "Creating conda environment from environment.yml..."
conda env create -f environment.yml

# Activate the environment
echo "Activating conda environment..."
source activate dev_env

# Install pipx
echo "Installing pipx..."
pip install pipx
pipx ensurepath

# Install DVC, nbdev, and any other tools using pipx
echo "Installing DVC and nbdev..."
pipx install dvc
pipx install nbdev

echo "Environment setup complete."