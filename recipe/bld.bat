@echo off

mkdir build
if errorlevel 1 exit 1

rem use pkg-config to find already built igraph from dependency package
set IGRAPH_USE_PKG_CONFIG=1

%PYTHON% -m pip install --no-deps --ignore-installed --no-build-isolation . -vvv
if errorlevel 1 exit 1
