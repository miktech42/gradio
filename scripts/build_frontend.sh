#!/bin/bash

cd "$(dirname ${0})/.."
source scripts/helpers.sh

pnpm_required

echo "Building the frontend..."
export NODE_OPTIONS="--max-old-space-size=4096"
pnpm i --frozen-lockfile
pnpm build
