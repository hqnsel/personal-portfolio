#!/bin/bash

# Install dependencies and generate index.html
poetry install --only main
poetry run python main.py

# Create dist directory
mkdir -p dist

# Copy generated index.html
cp index.html dist/

# Copy static assets
cp -r src/css dist/
cp -r src/js dist/
cp -r src/images dist/
cp -r config/assets dist/

