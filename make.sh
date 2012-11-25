#! /bin/bash

set -e

echo "----> Removing rock"
luarocks remove luv --force --local || true
echo "----> Making rock"
luarocks make luv-scm-1.rockspec --local

echo "----> OK"
