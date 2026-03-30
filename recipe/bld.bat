@echo off

mkdir build
if errorlevel 1 exit 1

rem use already built igraph from dependency package
set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%

%PYTHON% -m pip install --no-deps --ignore-installed --no-build-isolation . -vvv
if errorlevel 1 exit 1
