# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libfmt"
PKG_VERSION="8.0.1"
PKG_SHA256="b06ca3130158c625848f3fb7418f235155a4d389b2abc3a6245fb01cb0eb1e01"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/fmtlib/fmt"
PKG_URL="https://github.com/fmtlib/fmt/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="fmt is an open-source formatting library for C++. It can be used as a safe alternative to printf or as a fast alternative to IOStreams."

PKG_CMAKE_OPTS_TARGET="-DCMAKE_CXX_STANDARD=14 -DCMAKE_CXX_EXTENSIONS:BOOL=OFF -DFMT_DOC=OFF -DFMT_INSTALL=ON -DFMT_TEST=OFF"

if [ "${DISTRO}" = "Lakka" ]; then
  PKG_CMAKE_OPTS_TARGET+=" -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE"
fi
