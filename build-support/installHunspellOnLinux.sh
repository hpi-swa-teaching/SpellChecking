#!/usr/bin/env bash
set -v
sudo apt-get install libhunspell-1.3-0
dpkg -L libhunspell-1.3-0
echo 'loaded dictionaries for hunspell'
