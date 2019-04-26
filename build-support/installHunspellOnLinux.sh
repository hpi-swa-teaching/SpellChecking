#!/usr/bin/env bash
set -v
sudo cp $TRAVIS_BUILD_DIR/libhunspell-1.3.so.0 /lib/x86_64-linux-gnu/libhunspell-1.6.so.0
sudo cp $TRAVIS_BUILD_DIR/libhunspell-1.3.so.0 /lib/i386-linux-gnu/libhunspell-1.6.so.0
echo 'loaded dictionaries for hunspell'
