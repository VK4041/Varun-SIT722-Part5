#Deploy microservices
set -u 
: "$AZURE_RG"
: "$AZURE_AKS"
: "$CONTAINER_REGISTRY"

az account set --subscription 5f098897-a23a-4b9a-8b12-6634e6722fd8
az aks get-credentials --resource-group $AZURE_RG --name $AZURE_AKS --overwrite-existing

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f - 

#See cluster information
kubectl get pods
kubectl get deployments
kubectl get services