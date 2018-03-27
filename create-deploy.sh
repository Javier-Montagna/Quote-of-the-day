#!/bin/bash
kubectl get deployment quote-deploy > /dev/null 2>&1; 
if [ $? -ne 0 ]; then 
  echo "Deployment does not exist, creating."; 
  kubectl create -f quote-of-the-day-deployment.yaml; 
else 
  echo "Updating deployment"; 
  kubectl apply -f quote-of-the-day-deployment.yaml; 
fi