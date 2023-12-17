#!/usr/bin/env bash
set -oue pipefail
echo 'cloning module source repo'
git clone https://github.com/lwfinger/rtw89-BT
cd rtw89-BT
export KVER="6.6.3-200.fc39.x86_64"
echo 'Build for bazzite kernel'
echo $KVER
make
sudo make install
echo 'This module is NOT SIGNED, secure boot will fail'
# clean up
cd .. && rm -rf rtw89-BT