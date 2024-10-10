#Push image to container registry after tagging it

set -u 
: "$CONTAINER_REGISTRY"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

docker tag book-catalog:1 $CONTAINER_REGISTRY/book-catalog:1

docker tag inventory-management:1 $CONTAINER_REGISTRY/inventory-management:1

docker push $CONTAINER_REGISTRY/book-catalog:1

docker push $CONTAINER_REGISTRY/inventory-management:1