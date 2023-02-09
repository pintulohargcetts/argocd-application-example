#!/bin/bash

echo "argocd namespace pods must be" 
argoPass=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
echo $argoPass
echo "Loggin in with randomly generated password"

argocd login --insecure --grpc-web localhost:8080 --username admin --password $argoPass

echo "setting the credentials"
argocd account update-password --account admin --current-password  $argoPass --new-password 'calltech'

echo "Now you can login with user:admin & password :calltech"
argocd login --insecure --grpc-web localhost:8080 --username admin --password 
