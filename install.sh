#!/bin/sh
# arguments =================
# $1: install path, default /usr/local/sbin
# returns ===================
# e.g.
# $ git clone https://github.com/taogya/LinuxFunctions.git
# $ cd LinuxFunctions
# $ chmod +x install.sh
# $ sudo sh install.sh

INSTALL_PATH=${1:-/usr/local/sbin}

echo "install LinuxFunctions to ${INSTALL_PATH}."
if [ $(whoami) != "root" ]; then
    echo "not root."
    exit 1
fi
func_path="$(dirname $0)"/functions/

chmod +x "${func_path}"/*
\cp -f "${func_path}"/* "${INSTALL_PATH}"
echo "success."
