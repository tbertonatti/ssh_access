#!/usr/bin/env bash

MY_SHELL=$( which bash )

cd .ssh
vi authorized_keys

/usr/sbin/useradd -c 'Tomás Bertonatti <tbertonatti at termmed.com>' -s ${MY_SHELL} -m tbertonatti
cat >/etc/sudoers.d/tbertonatti-ALL <<EOF
kaik     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/tbertonatti-ALL
mkdir ~tbertonatti/.ssh
chmod 700 ~tbertonatti/.ssh
curl  https://raw.githubusercontent.com/tbertonatti/ssh_access/master/tbertonatti-ssh-key.pub >~tbertonatti/.ssh/authorized_keys
chmod 400 ~tbertonatti/.ssh/authorized_keys
chown -R tbertonatti ~tbertonatti/.ssh
