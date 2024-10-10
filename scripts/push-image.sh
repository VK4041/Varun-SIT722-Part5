#Push image to container registry after tagging it

set -u 
: "$CONTAINER_REGISTRY"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$VERSION"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

docker tag book-catalog:$VERSION $CONTAINER_REGISTRY/book-catalog:$VERSION

docker tag inventory-management:$VERSION $CONTAINER_REGISTRY/inventory-management:$VERSION

docker push $CONTAINER_REGISTRY/book-catalog:$VERSION

docker push $CONTAINER_REGISTRY/inventory-management:$VERSION