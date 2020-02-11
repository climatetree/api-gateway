#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
docker build -t climatetree:api-gateway .
docker tag climatetree:api-gateway patelvp/climatetree:api-gateway
docker push patelvp/climatetree:api-gateway
