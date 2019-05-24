 #!/usr/bin/env bash

 # Execute this file to install the AmlBitcoin cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%AmlBitcoin-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/AmlBitcoin-Qt.app/Contents/MacOS/AmlBitcoind /usr/local/bin/AmlBitcoind
 sudo ln -s ${LOCATION}/AmlBitcoin-Qt.app/Contents/MacOS/AmlBitcoin-cli /usr/local/bin/AmlBitcoin-cli
