# Your Solution
 
# Remove both containers from Kubernetes. since I have used a single kubernetes deployment.yaml
#file for both microservices

envsubst < ./scripts/kubernetes/deploymeny.yaml | kubectl delete -f -