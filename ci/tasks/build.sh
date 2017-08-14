#!/bin/bash
set -e

export ROOT_FOLDER=$( pwd )
export REPO=repo

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${SCRIPTS_DIR}/generate-settings.sh

[[ -f "${SCRIPTS_DIR}/functions.sh" ]] && source "${SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"


cd ${ROOT_FOLDER}/${REPO}
build "${PROJECT_TYPE}"