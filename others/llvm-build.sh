#!/usr/bin/env bash

# folder settings
ROOT_DIR="$PWD"
BUILD_DIR="$ROOT_DIR/out"
LLVM_DIR="$ROOT_DIR/source"
INSTALL_DIR="$ROOT_DIR/install"
TOOLS_DIR="$ROOT_DIR/tools"

# clear folder
if [[ -d "$BUILD_DIR" ]]; then
    rm -r "$BUILD_DIR"
fi
mkdir "$BUILD_DIR"
if [[ -d "$INSTALL_DIR" ]]; then
    rm -r "$INSTALL_DIR"
fi
mkdir "$INSTALL_DIR"

# toolchain settinsg
c="clang"
cxx="clang++"
ld="lld"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH"

if [[ -d "$TOOLS_DIR/bin" ]] && [[ -d "$TOOLS_DIR/lib" ]]; then
    c="$TOOLS_DIR/bin/clang"
    cxx="$TOOLS_DIR/bin/clang++"
    ld="$TOOLS_DIR/bin/ld.lld"
    export LD_LIBRARY_PATH="$TOOLS_DIR/lib:$TOOLS_DIR/lib/x86_64-unknown-linux-gnu:$LD_LIBRARY_PATH"
fi

# cmake settings
cmake -G "Unix Makefiles" -B "$BUILD_DIR" -S "$LLVM_DIR/llvm" \
    -DCMAKE_C_COMPILER="$c" \
    -DCMAKE_CXX_COMPILER="$cxx" \
    -DCMAKE_CXX_STANDARD="17" \
    -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH" \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" \
    -DBUILD_SHARED_LIBS=OFF \
    -DLLVM_LIT_ARGS="-v" \
    -DLLVM_USE_LINKER="$ld" \
    -DLLVM_EXTERNAL_LIT="$TOOLS_DIR/bin/lit" \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_ENABLE_BINDINGS=ON \
    -DLLVM_INSTALL_UTILS=ON \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_INCLUDE_TESTS=OFF \
    -DLLVM_ENABLE_LTO=Thin \
    -DLLVM_ENABLE_RTTI=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_TARGET_ARCH="host" \
    -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86;RISCV" \
    -DLLVM_ENABLE_PROJECTS="bolt;flang;clang;clang-tools-extra;lld;lldb;mlir;polly" \
    -DLLVM_ENABLE_RUNTIMES="libc;libunwind;libcxxabi;pstl;libcxx;compiler-rt;openmp;offload"

# build and install
cd "$BUILD_DIR" || exit
make install -j6
if [[ "$?" != "0" ]]; then
    echo "== build failed!  =="
    exit 1
fi
cd "$ROOT_DIR" || exit
if [[ -d "$TOOLS_DIR" ]]; then
    rm -rf "$TOOLS_DIR"
fi
mv "$INSTALL_DIR" "$TOOLS_DIR"
