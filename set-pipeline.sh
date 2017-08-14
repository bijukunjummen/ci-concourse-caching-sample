#!/bin/bash

ALIAS=${1:-myconcourse}

PIPELINE_NAME="ci-concourse-caching-sample"

echo y | fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c ci/pipeline.yml -l "ci/credentials.yml"
