#!/bin/bash

cd "$(dirname ${0})/.."
source scripts/helpers.sh

pnpm_required

echo "Building the frontend..."
# Needed for the build to succeed on low-memory machines
export NODE_OPTIONS="--max-old-space-size=4096"

pnpm i --frozen-lockfile
pnpm build
