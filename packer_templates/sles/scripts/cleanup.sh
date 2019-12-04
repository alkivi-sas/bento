#!/bin/sh
# These were only needed for building VMware/Virtualbox extensions:
zypper --non-interactive rm --clean-deps gcc kernel-default-devel
zypper clean

rm -f /tmp/chef*rpm

# Clean up network interface persistence
rm -f /etc/udev/rules.d/70-persistent-net.rules;
touch /etc/udev/rules.d/75-persistent-net-generator.rules;

# truncate any logs that have built up during the install
find /var/log -type f -exec truncate --size=0 {} \;

# clear the history so our install isn't there
export HISTSIZE=0
rm -f /root/.wget-hsts