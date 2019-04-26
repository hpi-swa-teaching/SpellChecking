#!/usr/bin/env bash
set -v
sudo apt search libhunspell
sudo cp /usr/lib/x86_64-linux-gnu/libhunspell-1.3.so.0.0.0 /usr/lib/i386-linux-gnu/libhunspell-1.6.so.0
echo 'loaded dictionaries for hunspell'
