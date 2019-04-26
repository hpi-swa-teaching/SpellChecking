#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.3-0:i386
sudo dpkg -L libhunspell-1.3-0
file /usr/lib/i386-linux-gnu/libhunspell-1.3.so.0.0.0
sudo cp /usr/lib/i386-linux-gnu/libhunspell-1.3.so.0.0.0 /usr/lib/x86_64-linux-gnu/libhunspell-1.6.so.0
sudo cp /usr/lib/i386-linux-gnu/libhunspell-1.3.so.0.0.0 /usr/lib/i386-linux-gnu/libhunspell-1.6.so.0
echo 'loaded dictionaries for hunspell'
