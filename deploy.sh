#!/usr/bin/env bash

set -e
source ./env.sh

echo "building..."

./build.sh

echo "deploying..."

cd cdk && npm run cdk-deploy && cd -

echo "generating config for UI..."

./config-ui.sh



