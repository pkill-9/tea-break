#!  /bin/bash

# install script for the tea-break alert system.

PREFIX=/usr/local

# build the alert program.
ant deploy

install --mode=755 ./enable-alarm ${PREFIX}/bin
install --mode=755 ./disable-alarm ${PREFIX}/bin
install -D --mode=755 ./tea-break.sh ${PREFIX}/share/tea-break/tea-break.sh

install -D ./target/dist/tea-break.jar ${PREFIX}/share/java

# vim: ts=4 sw=4 et
