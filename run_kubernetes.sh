#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="singha53/api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment api --image="$dockerpath:version1.0"
kubectl expose deployment/api --port=80 --target-port=80

# Step 3:
# List kubernetes pods
kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/api 8000:80
