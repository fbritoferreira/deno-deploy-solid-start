#!/bin/sh
set -e

cd ${PROJECT}

if [ "${INSTALL}" = true ]; then
  echo "Installing dependencies"
  ${PACKAGE_MANAGER} install
fi

if [ "${BUILD}" = true ]; then
  echo "Building project"
  ${PACKAGE_MANAGER} build
fi

if [ "${DEPLOY}" = true ]; then
  echo "Deploying to deno deploy"
  ${PACKAGE_MANAGER} deploy
fi
