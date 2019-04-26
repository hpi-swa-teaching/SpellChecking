#!/usr/bin/env bash
set -v
sudo apt search libhunspell
sudo cp $TRAVIS_BUILD_DIR/libhunspell-1.6.so.0 /usr/lib/x86_64-linux-gnu/libhunspell-1.6.so.0
echo 'loaded dictionaries for hunspell'
