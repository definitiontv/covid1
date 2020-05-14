#!/bin/sh
docker build -t johnbeck/autoapp:v1 . && docker push johnbeck/autoapp:v1
kubectl delete -f deploy.yaml
kubectl create -f deploy.yaml
