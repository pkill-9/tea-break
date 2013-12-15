#!  /bin/bash

# install script for the tea-break alert system.

# build the alert program.
ant deploy

# check that we have /etc/cron.hourly to run hourly cron jobs via anacron.
if [ ! -d /etc/cron.hourly ]
then
    echo "Unable to install tea-break: I depend on Anacron to start the\
        alert program every hour.\nInstall Anacron then try again."
fi

install --mode=755 ./tea-break.sh /etc/cron.hourly/tea-break
install --mode=755 ./enable-alarm /usr/local/bin
install --mode=755 ./disable-alarm /usr/local/bin

install -D ./target/dist/tea-break.jar /usr/local/share/java

# vim: ts=4 sw=4 et
