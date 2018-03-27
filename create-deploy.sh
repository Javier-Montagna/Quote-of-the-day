#!/bin/bash
kubectl get deployment quote-deploy > /dev/null 2>&1; 
if [ $? -ne 0 ]; then 
  echo "Deployment does not exist, creating."; 
  kubectl create -f quote-of-the-day-deployment.yaml; 
else 
  echo "Updating deployment"; 
  sed -ie "s/SALT_TO_BE_REPLACE_DURING_DEPLOYMENT/$(date)/g" quote-of-the-day-deployment.yaml
  kubectl apply -f quote-of-the-day-deployment.yaml --record; 
fi