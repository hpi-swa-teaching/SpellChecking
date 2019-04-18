#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.6-0
ln -s /usr/lib/i386-linux-gnu/libhunspell-1.6.so.0 libhunspell-1.3.so.0
pwd
echo 'loaded dictionaries for hunspell'
