#!  /bin/bash

# install script for the tea-break alert system.

. ./config.sh


# build the alert program.
ant deploy

SCRIPT_PATH="${PREFIX}/share/tea-break"
JAR_DEST="${PREFIX}/share/java"

echo "Installing scripts to ${SCRIPT_PATH}"

install -D --mode=755 ./config.sh
install -D --mode=755 ./enable-alarm ${SCRIPT_PATH}
install -D --mode=755 ./disable-alarm ${SCRIPT_PATH}
install -D --mode=755 ./tea-break.sh ${SCRIPT_PATH}

echo "Creating links to ${SCRIPT_PATH} in ${PREFIX}/bin..."

ln -s ${SCRIPT_PATH}/enable-alarm ${PREFIX}/bin
ln -s ${SCRIPT_PATH}/disable-alarm ${PREFIX}/bin

echo "Installing jars to ${JAR_DEST}"

install -D ./target/dist/tea-break.jar ${JAR_DEST}

# vim: ts=4 sw=4 et
