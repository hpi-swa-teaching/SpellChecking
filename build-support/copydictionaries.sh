#!/usr/bin/env bash
set -v
mkdir -p ${SMALLTALK_CI_BUILD}
cp -R ${TRAVIS_BUILD_DIR}/build-support/dictionaries ${SMALLTALK_CI_BUILD}/
echo 'loaded dictionaries for hunspell'
