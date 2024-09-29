#!/bin/bash

if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

docker push $CONTAINER_REGISTRY.azurecr.io/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY.azurecr.io/inventory_management:$VERSION