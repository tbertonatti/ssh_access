#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Alejandro Lopez Osornio <alopez at termmed.com>' -s ${MY_SHELL} -m alopez
cat >/etc/sudoers.d/alopez-ALL <<EOF
kaik     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/alopez-ALL
mkdir ~alopez/.ssh
chmod 700 ~alopez/.ssh
curl  https://raw.githubusercontent.com/alopezo/ssh_access/master/alo-ssh-key.pub >~alopez/.ssh/authorized_keys
chmod 400 ~alopez/.ssh/authorized_keys
chown -R alopez ~alopez/.ssh
