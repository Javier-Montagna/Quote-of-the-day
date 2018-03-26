#!/usr/bin/env bash
set -e
kubectl get services quote-svc > /dev/null 2>&1;
if [ $? -ne 0 ]; then 
  echo "Service does not exist, creating."; 
  kubectl create -f quote-of-the-day-service.yaml; 
else 
  echo "Service already exist, skipping step"; 
fi