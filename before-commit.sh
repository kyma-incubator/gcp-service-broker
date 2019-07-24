#!/usr/bin/env bash

readonly ROOT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

pushd ${ROOT_PATH} > /dev/null

# Exit handler. This function is called anytime an EXIT signal is received.
# This function should never be explicitly called.
function _trap_exit () {
    popd > /dev/null
}
trap _trap_exit EXIT

readonly CI_FLAG=ci
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly INVERTED='\033[7m'
readonly NC='\033[0m' # No Color

echo -e "${INVERTED}"
echo "USER: " + ${USER}
echo "PATH: " + ${PATH}
echo "GOPATH:" + ${GOPATH}
echo -e "${NC}"
