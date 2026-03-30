#!/bin/env bash

# use pkg-config to find already built igraph from dependency package
export IGRAPH_USE_PKG_CONFIG=1
${PYTHON} -m pip install --no-deps --ignore-installed --no-build-isolation . -vvv
