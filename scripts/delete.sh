#Your solution

az aks get-credentials --resource-group $AZURE_RG --name $AZURE_AKS --overwrite-existing

#See pods before deletion
kubectl get pods

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -

#See pods after deletion
kubectl get pods