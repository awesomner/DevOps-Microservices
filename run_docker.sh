#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag awesomner/udacity_ml_project .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run flask app
docker run -it --rm -p 8000:80 --name udacity_ml_project awesomner/udacity_ml_project
