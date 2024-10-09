set -u 
: "$CONTAINER_REGISTRY"
: "$NAME"
: "$DIRECTORY"

docker build -t $CONTAINER_REGISTRY/$NAME:1 --file ./$DIRECTORY/Dockerfile ./$DIRECTORY
