#!/bin/bash

cd "$(dirname ${0})/.."
source scripts/helpers.sh

pnpm_required

echo "Building the frontend..."
# Next line needed for building the frontend on low memory machines
export NODE_OPTIONS="--max-old-space-size=4096"
pnpm i --frozen-lockfile
pnpm build