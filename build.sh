#!/bin/bash
set -e
rm -rf dist
mkdir -p dist
cp -r src dist/
echo "Built at: $(date -u +'%Y-%m-%dT%H:%M:%SZ')" > dist/BUILD_INFO.txt
zip -r dist.zip dist
echo "Artifact created: dist.zip"
