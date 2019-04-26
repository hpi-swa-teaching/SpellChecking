#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.3-0
sudo ls -la /lib/i386-linux-gnu
sudo ls -la /usr/lib/i386-linux-gnu
echo 'loaded dictionaries for hunspell'
