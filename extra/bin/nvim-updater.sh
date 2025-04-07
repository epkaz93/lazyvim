#!/usr/bin/env sh

if [ $(id -u) -ne 0 ]; then
  echo "nvim updater must be run as root"
  exit 1
fi

: ${NVIM_PACKAGE_URL:=https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz}

: ${NVIM_INSTALL_DIRECTORY:=/opt/nvim}
NVIM_INSTALL_PARENT=$(dirname $NVIM_INSTALL_DIRECTORY)
NVIM_INSTALL_NAME=$(basename $NVIM_INSTALL_DIRECTORY)

wget $NVIM_PACKAGE_URL -O - | tar -xzvf - -C $NVIM_INSTALL_PARENT --one-top-level=${NVIM_INSTALL_NAME} --strip-components 1
