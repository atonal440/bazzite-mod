#!/usr/bin/env bash
set -oue pipefail
echo 'cloning module source repo'
git clone https://github.com/lwfinger/rtw89-BT
cd rtw89-BT
make
sudo make install
echo 'This module is NOT SIGNED, secure boot will fail'
# clean up
cd .. && rm -rf rtw89-BT