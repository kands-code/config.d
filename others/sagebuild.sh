#!/usr/bin/env bash

set -euo pipefail

# 设置环境变量
export DOT_SAGE="$XDG_STATE_HOME/sagemath"
export SAGE_LOCAL="$HOME/.local/sdk/sagemath"
export SAGE_ROOT="$HOME/.local/sdk/sagemath/sage"
# 对于苹果用户，需要设置 brew
command -v brew >/dev/null 2>&1 && source "$SAGE_ROOT/.homebrew-build-env"

# 对于非标准 CMAKE
export CMAKE_POLICY_VERSION_MINIMUM="3.5"

# 切换到 sage 源码目录
cd "$SAGE_ROOT"

# 设置编译选项
if [[ -f "$SAGE_ROOT/configure" ]]; then
  make reconfigure
else
  make configure
fi

# 编译配置
./configure \
  --with-system-python3=no \
  --with-system-cmake=yes \
  --with-system-curl=yes \
  --with-system-meson=no \
  --with-system-ninja_build=no \
  --with-system-pkgconfig=no \
  --with-system-numpy=no \
  --with-system-scipy=no \
  --with-system-cvxopt=no \
  --with-system-cython=no \
  --with-system-matplotlib=no \
  --with-system-jupyter_core=no \
  --with-system-jupyter_client=no \
  --with-system-ipython=no \
  --with-system-pip=no \
  --with-system-setuptools=no \
  --with-system-sympy=no \
  --with-system-networkx=no \
  --with-system-pandas=no \
  --with-system-pillow=no \
  --with-system-pygments=no \
  --with-system-pyparsing=no \
  --with-system-pyzmq=no \
  --with-system-jinja2=no \
  --with-system-sphinx=no \
  --with-system-flint=no \
  --with-system-pari=no \
  --with-system-gmp=no \
  --with-system-mpfr=no \
  --with-system-mpc=no \
  --with-system-ecl=no \
  --with-system-gap=no \
  --with-system-singular=no \
  --with-system-polymake=no \
  --with-system-libpng=no \
  --with-system-libjpeg=no \
  --with-system-freetype=no \
  --with-system-imagemagick=no \
  --with-system-gcc=yes \
  --with-system-gfortran=yes \
  --with-system-openblas=yes \
  --with-sage-venv=yes \
  --enable-system-site-packages=no \
  --disable-download-from-upstream-url \
  --enable-notebook=yes \
  --enable-doc=yes \
  --enable-wheels=yes \
  --disable-meson-check \
  --prefix="$SAGE_LOCAL" # 设置安装路径

# 开始编译
if [[ "$(uname)" == "Darwin" ]]; then
  JOBS=$(sysctl -n hw.ncpu)
elif [[ "$(uname)" == "Linux" ]]; then
  JOBS=$(nproc)
else
  JOBS=4
fi

make -j"$JOBS" -s V=0
