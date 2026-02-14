#!/usr/bin/env bash

set -e

BUILD_VERSION=m144-e2e6623374
BUILD_TYPE=Release

cd "$(dirname "${BASH_SOURCE[0]}")"

python3 script/checkout.py --version ${BUILD_VERSION}
python3 script/build.py --build-type ${BUILD_TYPE}
python3 script/archive.py --version ${BUILD_VERSION} --build-type ${BUILD_TYPE} --target linux --machine riscv64