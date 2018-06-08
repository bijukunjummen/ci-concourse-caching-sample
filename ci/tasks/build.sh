#!/bin/bash
set -e
set -x

export ROOT_FOLDER=$( pwd )
export REPO=repo

M2_HOME="${HOME}/.m2"
M2_CACHE="${ROOT_FOLDER}/maven"
GRADLE_HOME="${HOME}/.gradle"
GRADLE_CACHE="${ROOT_FOLDER}/gradle"

echo "Generating symbolic links for caches"

[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"
[[ -d "${GRADLE_CACHE}" && ! -d "${GRADLE_HOME}" ]] && ln -s "${GRADLE_CACHE}" "${GRADLE_HOME}"

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#. ${SCRIPTS_DIR}/generate-settings.sh

[[ -f "${SCRIPTS_DIR}/functions.sh" ]] && source "${SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"


cd ${ROOT_FOLDER}/${REPO}
build "${PROJECT_TYPE}"