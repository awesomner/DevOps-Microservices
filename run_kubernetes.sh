#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="awesomner/udacity_ml_project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment prediction --image=awesomner/udacity_ml_project
sleep 20

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/prediction 8000:80
