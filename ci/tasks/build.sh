#!/bin/bash
set -e

export ROOT_FOLDER=$( pwd )
export REPO=repo


__SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "${__SCRIPTS_DIR}/functions.sh" ]] && source "${__SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"


cd ${ROOT_FOLDER}/${REPO}
build "${PROJECT_TYPE}"