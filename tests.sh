#!/usr/bin/env bash

IMAGE_NAME="prasantk/docker-satis"
VERSION="4.2"

function build() {
  docker build -t "${IMAGE_NAME}:${VERSION}" .
}

function run() {
  docker run --rm "${IMAGE_NAME}:${VERSION}" bash -c "cat /app/config.json && ./scripts/build.sh"
}

function test_all() {
  echo "=== START"

  build
  run

  echo "=== END"
}

test_all
