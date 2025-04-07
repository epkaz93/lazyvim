#!/usr/bin/env sh

if [ $(id -u) -ne 0 ]; then
  echo "nvim installer must be run as root"
  exit 1
fi

SRC_DIRECTORY=$(dirname $0)
DST_DIRECTORY=/usr/local/bin

: ${NVIM_INSTALL_DIRECTORY:=/opt/nvim}
export NVIM_INSTALL_DIRECTORY

cp ${SRC_DIRECTORY}/nvim-updater.sh ${DST_DIRECTORY}/nvim-updater
chmod +x ${DST_DIRECTORY}/nvim-updater
nvim-updater

ln -sf ${NVIM_INSTALL_DIRECTORY}/bin/nvim ${DST_DIRECTORY}/nvim

cp ${SRC_DIRECTORY}/lazyvim.sh ${DST_DIRECTORY}/lazyvim
chmod +x ${DST_DIRECTORY}/lazyvim

echo
echo '### Install Completed ###'
echo "Installed 'nvim-updater' to ${DST_DIRECTORY}"
echo "Installed 'nvim' to ${NVIM_INSTALL_DIRECTORY} and symlinked to ${DST_DIRECTORY}"
echo "Installed nvim APP 'lazyvim' to ${DST_DIRECTORY}"
