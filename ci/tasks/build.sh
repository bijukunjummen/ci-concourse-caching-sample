#!/bin/bash
set -e

__SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "${__SCRIPTS_DIR}/functions.sh" ]] && source "${__SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"

build "${PROJECT_TYPE}"