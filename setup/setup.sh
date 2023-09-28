#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

# Set ROOT_DIR to the parent directory of SCRIPT_DIR
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

# Change to the parent directory of the script
echo "Switched to project root dir..."
cd $ROOT_DIR

# Check if venv exists
if [ -d "venv" ]; then
    echo "Virtual environment already exists."
else
    echo "Creating virtual environment..."
    python3.11 -m venv venv

    # Check if venv creation was successful
    if [ $? -eq 0 ]; then
        echo "Virtual environment created successfully."
    else
        echo "Error: Virtual environment creation failed."
        exit 1  # Exit the script with an error code
    fi
fi

# Install packages into virtual environment
echo "Installing packages into virtual environment..."
. "$ROOT_DIR/venv/bin/activate" && \
pip install -r "$ROOT_DIR/requirements.txt" && \
pre-commit install
