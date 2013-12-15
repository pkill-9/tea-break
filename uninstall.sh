#!  /bin/bash

# removes the files belonging to the tea-break alert system which were
# set up by the install script. Uninstalling tea-break will stop the
# alerts, but if that is all that you want to do then you should use the
# disable-alarm command instead.

rm /etc/cron.hourly/tea-break
rm /usr/local/bin/enable-alarm
rm /usr/local/bin/disable-alarm
rm /usr/local/share/java/tea-break.jar

ant clean

# vim: ts=4 sw=4 et
