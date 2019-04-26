#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.3-0
ln -s /usr/lib/i386-linux-gnu/libhunspell-1.3.so.0 /usr/lib/i386-linux-gnu/libhunspell-1.6.so.0
pwd
echo 'loaded dictionaries for hunspell'
