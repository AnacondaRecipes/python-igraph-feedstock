@echo on

REM mkdir build
REM if errorlevel 1 exit 1

REM set IGRAPH_CMAKE_EXTRA_ARGS=%CMAKE_ARGS%^
REM       -GNinja ^
REM      -DCMAKE_BUILD_TYPE=Release ^
REM      -DCMAKE_PREFIX_PATH=%CONDA_PREFIX% ^
REM      -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
REM      -DCMAKE_INSTALL_INCLUDEDIR=%LIBRARY_INC% ^
REM      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
REM      -DCMAKE_POSITION_INDEPENDENT_CODE=on ^
REM      -DIGRAPH_USE_INTERNAL_BLAS=0 ^
REM      -DIGRAPH_USE_INTERNAL_LAPACK=0 ^
REM      -DIGRAPH_USE_INTERNAL_ARPACK=1 ^
REM      -DIGRAPH_USE_INTERNAL_GLPK=0 ^
REM      -DIGRAPH_USE_INTERNAL_GMP=1 ^
REM      -DBUILD_SHARED_LIBS=on ^
REM      -DIGRAPH_ENABLE_LTO=1 ^
REM      -DIGRAPH_ENABLE_TLS=1 ^
REM      -DIGRAPH_GRAPHML_SUPPORT=1
REM set IGRAPH_EXTRA_LIBRARIES=glpk,libxml2

set IGRAPH_USE_PKG_CONFIG=1
%PYTHON% -m pip install --no-deps --ignore-installed --no-build-isolation . -vvv
if errorlevel 1 exit 1
