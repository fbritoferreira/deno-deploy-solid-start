#!/bin/sh
set -e

cd ${PROJECT}

if [ "${INSTALL}" = true ]; then
  echo "Installing dependencies"
  yarn install
fi

if [ "${BUILD}" = true ]; then
  echo "Building project"
  yarn build
fi

if [ "${DEPLOY}" = true ] && [ -z ${DENO_DEPLOY_TOKEN} ]; then
  echo "Deploying to deno deploy"
  yarn deploy
fi
