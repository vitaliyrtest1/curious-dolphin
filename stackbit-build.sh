#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://vitaliy-stackbit.ngrok.io/pull/60223a98094dd3fd8d8cbc2f

# build site
npm run build

echo "stackbit-build.sh: finished build"
