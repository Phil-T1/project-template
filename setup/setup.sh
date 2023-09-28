#!/bin/bash

# Configures Python setup for project

echo "Switching to root dir..."
cd ..

# Check if venv exists
if [ -d "venv" ]; then
    echo "Virtual environment already exists."
else
    echo "Creating virtual environment..."
    python -m venv venv
fi

# Install packages into virtual environment
echo "Installing packages into virtual environment..."
chmod u+x ./venv/Scripts/activate
sh ./venv/Scripts/activate
pip install -r requirements.txt
pre-commit install
