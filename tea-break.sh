#!  /bin/bash

# Script to open the tea-break pop up window, to prompt the user to punctuate their
# screen time with other leisures. This script is to be invoked periodically by
# the cron scheduling facility.
#
# Matthew Signorini <matthew.signorini@gmail.com>

. /usr/lib/java-wrappers/java-wrappers.sh


MAIN_CLASS="mps.teabreak.gui.TeaBreakWindow"
JAVA_JARPATH=${JAVA_JARPATH}:/usr/local/share/java

# don't do anything unless the user wants us to.
if [ ! -e /var/run/tea-break/alarm-enabled ]
then
    exit
fi

# cron.hourly jobs first get run immediately after the computer boots, so we don't
# want to bring up the pop up until the second time this script is invoked. This is
# done by creating a temp file that is deleted when the computer shuts down. If the
# file exists, this script has already been invoked, so we show the dialog, 
# otherwise we create the file.
if [ ! -e /var/run/tea-break/show-dialog ]
then
    touch /var/run/tea-break/show-dialog
    exit
fi

find_java_runtime
find_jars tea-break.jar

run_java ${MAIN_CLASS} $@

# vim: ts=4 sw=4 et
