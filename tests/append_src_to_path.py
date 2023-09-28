"""Adds the src folder to path for easier unit testing."""

import sys
import os

# Path to root dir
src_path = os.path.abspath(os.path.join(__file__, "..", ".."))

# Add dir troot dir to path
sys.path.append(src_path)
