# Homework - Lesson 3 OS 2!
1. Create 2 virtual machines (hereinafter - VM1, VM2. You can give any name convenient for you). Use the ubuntu24.10 image
2. Completely go through all the installation steps and manually partition the free space into disks.
3. Configure the SSH connection as follows: host OS -> VM1, VM1 -> host OS, VM2 -> VM1, VM2 -x> host OS. You can prohibit the connection using any convenient policy via iptables.

* using the Hashicorp Packer tool, create images of two virtual machines with pre-prepared presets described above. There should be 2 configs.

## Create VM1 and VM2

![Create VM1 and VM2](/images/create_two_vm.png)

## Connecting a host to a VM1

![Connecting a host to a VM1](/images/host_ssh_to_vm1.png)

## Connecting a VM1 to a host

![Connecting a host to a VM1](/images/vm1_ssh_to_host.png)

## Connecting a VM2 to a VM1

![Connecting a host to a VM1](/images/vm2_ssh_to_vm1.png)

## Connecting a VM2 to a host

![Connecting a host to a VM1](/images/vm2_ssh_to_host.png)

Blocked traffic and access by means of iptables.

## Tried the packer. Cool stuff!