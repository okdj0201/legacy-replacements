#!/bin/bash -u
# Add settings to init files like(.bashrc/.zshrc)
INIT_FILE=$1

if [ ! -e ${INIT_FILE} ]; then
	echo "${INIT_FILE} does not exists. Exiting..."
	exit 1
fi

cat ../common/bin/ini_file >> ${INI_FILE}

cp -pr ../common/bin/cdp /usr/local/bin

