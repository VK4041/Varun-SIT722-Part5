# Your Solution
# deploy both container to kuberneters. since I have used a single kubernetes deployment.yaml
#file for both microservices

envsubst < ./scripts/kubernetes/deploymeny.yaml | kubectl apply -f -