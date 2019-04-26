#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.3-0
sudo ln -s /usr/lib/x86_64-linux-gnu/libhunspell-1.3.so.0 /usr/lib/x86_64-linux-gnu/libhunspell-1.6.so.0
sudo ls -la /usr/lib/x86_64-linux-gnu
echo 'loaded dictionaries for hunspell'
