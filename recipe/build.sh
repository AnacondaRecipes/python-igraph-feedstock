#!/bin/env bash

export IGRAPH_USE_PKG_CONFIG=1
${PYTHON} -m pip install --no-deps --ignore-installed --no-build-isolation . -vvv
