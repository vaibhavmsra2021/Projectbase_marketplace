#!/bin/bash

# Specify the path to your virtual environment
venv_path="venv"

# Activate the virtual environment
source "$venv_path/bin/activate"

# Set Flask environment variables
export FLASK_APP='index.py'
export FLASK_ENV='development'

python download_nltk.py

# Start Flask application
flask run