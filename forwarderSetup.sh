#!/bin/sh
#
#  only doing all the sudos as cloud-init doesn't run as root, likely better to use Azure VM Extensions
#
#  $1 is the forwarder, $2 is the vnet IP range
#

touch /tmp/forwarderSetup_start
echo "$@" > /tmp/forwarderSetup_params

#  Install Bind9
sudo apt-get update -y
sudo apt-get install bind9 -y

# configure Bind9 for forwarding
sudo cat > named.conf.options << EndOFNamedConfOptions
options {
        directory "/var/cache/bind";
        recursion yes;
        allow-query { any; };
        forwarders {
            $1;
        };
        forward only;
        dnssec-validation auto;
        auth-nxdomain no;    # conform to RFC1035
        listen-on { any; };
};
EndOFNamedConfOptions

sudo cp named.conf.options /etc/bind
sudo service bind9 restart

touch /tmp/forwarderSetup_end