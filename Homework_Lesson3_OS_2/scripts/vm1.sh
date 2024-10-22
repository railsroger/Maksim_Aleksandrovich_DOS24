#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

echo "==> Install qemu guest agent"
apt-get install -y qemu-guest-agent
apt-get -y autoremove
apt-get install iptables
apt-get install iptables-persistent


iptables -F
iptables -X


iptables -A INPUT -i lo -j ACCEPT


iptables -A INPUT -p tcp -s 10.10.14.19 --dport 22 -j ACCEPT


iptables -A INPUT -p tcp -s 192.168.122.15 --dport 22 -j ACCEPT

iptables -A INPUT -s 192.168.122.15 -j ACCEPT


iptables -A OUTPUT -d 10.10.14.19 -j ACCEPT

iptables -A OUTPUT -j ACCEPT


iptables -P INPUT DROP