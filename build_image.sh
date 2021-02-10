#!/bin/bash
docker buildx create --use
docker buildx build --no-cache --push --platform="linux/amd64,linux/arm64/v8,linux/arm/v7" -t darthrax/rpi-samba:latest .
docker buildx rm
