#!/bin/bash

if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY.azurecr.io --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY.azurecr.io/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY.azurecr.io/inventory_management:$VERSION