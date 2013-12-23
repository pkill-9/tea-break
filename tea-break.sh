#!  /bin/bash

# Script to open the tea-break pop up window, to prompt the user to punctuate their
# screen time with other leisures. This script is to be invoked periodically by
# the cron scheduling facility.
#
# Matthew Signorini <matthew.signorini@gmail.com>

. ./config.sh
. /usr/lib/java-wrappers/java-wrappers.sh


MAIN_CLASS="mps.teabreak.gui.TeaBreakWindow"
JAVA_JARPATH=${PREFIX}/share/java
ENABLED_FILE=${RUNTIME}/alarm-enabled
DEBUG_LOG=${RUNTIME}/debug.log

# don't do anything unless the user wants us to.
if [ ! -e ${ENABLED_FILE} ]
then
    exit
fi

find_java_runtime
find_jars tea-break.jar

run_java ${MAIN_CLASS} $@ >> ${DEBUG_LOG} 2>&1 

# vim: ts=4 sw=4 et
