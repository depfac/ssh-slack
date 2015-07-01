#! /bin/bash
echo 'Extract version ...'
version=`awk -F':' '/^Version:/{print $NF}' ssh-slack/DEBIAN/control`
echo "Build package ssh-slack version $version ..."
fakeroot dpkg-deb -v --build ssh-slack/
mv ssh-slack.deb ssh-slack_$version.deb
