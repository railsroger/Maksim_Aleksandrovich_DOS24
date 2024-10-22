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

iptables -A OUTPUT -d VM1_IP -j ACCEPT


iptables -A OUTPUT -d HOST_IP -j ACCEPT


iptables -P INPUT DROP
iptables -P OUTPUT DROP