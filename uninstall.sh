#!  /bin/bash

# removes the files belonging to the tea-break alert system which were
# set up by the install script. Uninstalling tea-break will stop the
# alerts, but if that is all that you want to do then you should use the
# disable-alarm command instead.

. config.sh


SCRIPT_PATH="${PREFIX}/share/tea-break"

echo "Removing commands from ${PREFIX}/bin..."

rm ${PREFIX}/bin/enable-alarm
rm ${PREFIX}/bin/disable-alarm

echo "Removing jar from ${PREFIX}/share/java..."

rm ${PREFIX}/share/java/tea-break.jar

echo "Removing scripts from ${SCRIPT_PATH}..."

rm -r ${SCRIPT_PATH}

ant clean

# vim: ts=4 sw=4 et
